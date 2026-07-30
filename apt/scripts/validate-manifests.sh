#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
download=false

if [ "${1:-}" = "--download" ]; then
  download=true
  shift
fi

if [ "$#" -eq 0 ]; then
  mapfile -d '' manifests < <(find "$ROOT/apt/manifests" -type f -name '*.deb822' -print0 | sort -z)
else
  manifests=("$@")
fi

if [ "${#manifests[@]}" -eq 0 ]; then
  printf 'no package manifests found\n' >&2
  exit 1
fi

field() {
  local manifest="$1"
  local key="$2"
  awk -v key="$key" 'index($0, key ": ") == 1 {print substr($0, length(key) + 3); exit}' "$manifest"
}

seen="$(mktemp)"
download_dir="$(mktemp -d)"
trap 'rm -f "$seen"; rm -rf "$download_dir"' EXIT

for manifest in "${manifests[@]}"; do
  test -f "$manifest"
  package="$(field "$manifest" Package)"
  version="$(field "$manifest" Version)"
  architecture="$(field "$manifest" Architecture)"
  filename="$(field "$manifest" Filename)"
  size="$(field "$manifest" Size)"
  sha256="$(field "$manifest" SHA256)"

  test -n "$package" && test -n "$version" && test -n "$architecture"
  case "$architecture" in amd64|arm64) ;; *) exit 1 ;; esac
  printf '%s\t%s\t%s\n' "$package" "$version" "$architecture" >> "$seen"

  expected="$ROOT/apt/manifests/$package/$version/$architecture.deb822"
  test "$(cd "$(dirname "$manifest")" && pwd)/$(basename "$manifest")" = "$expected" || {
    printf 'manifest path does not match its package fields: %s\n' "$manifest" >&2
    exit 1
  }

  case "$filename" in
    ../../../../*/releases/download/v*/*_"$version"_"$architecture".deb) ;;
    *) printf 'invalid GitHub Release filename in %s: %s\n' "$manifest" "$filename" >&2; exit 1 ;;
  esac
  case "$size" in ''|*[!0-9]*) printf 'invalid size in %s\n' "$manifest" >&2; exit 1 ;; esac
  test "${#sha256}" -eq 64 && case "$sha256" in
    *[!0-9a-f]*) false ;;
    *) true ;;
  esac || {
    printf 'invalid SHA256 in %s\n' "$manifest" >&2
    exit 1
  }

  if $download; then
    relative="${filename#../../../../}"
    repository="${relative%%/*}"
    remainder="${relative#*/releases/download/}"
    tag="${remainder%%/*}"
    asset="${remainder#*/}"
    deb="$download_dir/$package-$version-$architecture.deb"
    curl -fsSL --retry 3 -o "$deb" \
      "https://github.com/circlesac/$repository/releases/download/$tag/$asset"
    test "$(wc -c < "$deb" | tr -d ' ')" = "$size"
    test "$(sha256sum "$deb" | cut -d' ' -f1)" = "$sha256"
    test "$(dpkg-deb -f "$deb" Package)" = "$package"
    test "$(dpkg-deb -f "$deb" Version)" = "$version"
    test "$(dpkg-deb -f "$deb" Architecture)" = "$architecture"
  fi
done

duplicates="$(sort "$seen" | uniq -d)"
test -z "$duplicates" || {
  printf 'duplicate package/version/architecture manifests:\n%s\n' "$duplicates" >&2
  exit 1
}

printf 'validated %s package manifests%s\n' \
  "${#manifests[@]}" "$($download && printf ' and release assets' || true)"
