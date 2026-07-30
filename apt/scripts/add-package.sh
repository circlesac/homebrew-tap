#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

if [ "$#" -ne 3 ]; then
  printf 'usage: %s DEB CIRCLES_REPOSITORY RELEASE_TAG\n' "$0" >&2
  exit 2
fi

deb="$1"
repository="$2"
release_tag="$3"

test -f "$deb"
command -v dpkg-deb >/dev/null 2>&1
command -v sha256sum >/dev/null 2>&1

case "$repository" in
  circlesac/*) repository="${repository#circlesac/}" ;;
  *) printf 'repository must belong to circlesac: %s\n' "$repository" >&2; exit 1 ;;
esac

case "$repository" in
  *[!A-Za-z0-9._-]*|'') printf 'invalid repository: %s\n' "$repository" >&2; exit 1 ;;
esac

package="$(dpkg-deb -f "$deb" Package)"
version="$(dpkg-deb -f "$deb" Version)"
architecture="$(dpkg-deb -f "$deb" Architecture)"
asset="$(basename "$deb")"

case "$package" in
  *[!a-z0-9+.-]*|'') printf 'invalid package name: %s\n' "$package" >&2; exit 1 ;;
esac
case "$version" in
  *[!A-Za-z0-9.+:~_-]*|'') printf 'unsupported version for manifest path: %s\n' "$version" >&2; exit 1 ;;
esac
case "$architecture" in
  amd64|arm64) ;;
  *) printf 'unsupported architecture: %s\n' "$architecture" >&2; exit 1 ;;
esac

test "$release_tag" = "v$version" || {
  printf 'release tag must be v%s, got %s\n' "$version" "$release_tag" >&2
  exit 1
}

expected_asset="${package}_${version}_${architecture}.deb"
test "$asset" = "$expected_asset" || {
  printf 'expected Debian asset %s, got %s\n' "$expected_asset" "$asset" >&2
  exit 1
}

manifest_dir="$ROOT/apt/manifests/$package/$version"
manifest="$manifest_dir/$architecture.deb822"
temporary="$(mktemp)"
trap 'rm -f "$temporary"' EXIT

dpkg-deb -f "$deb" > "$temporary"
printf '%s\n' \
  "Filename: ../../../../${repository}/releases/download/${release_tag}/${asset}" \
  "Size: $(wc -c < "$deb" | tr -d ' ')" \
  "SHA256: $(sha256sum "$deb" | cut -d' ' -f1)" >> "$temporary"

if [ -e "$manifest" ]; then
  cmp -s "$temporary" "$manifest" || {
    printf 'refusing to replace immutable manifest: %s\n' "$manifest" >&2
    exit 1
  }
  printf 'manifest already exists: %s\n' "$manifest"
  exit 0
fi

install -d -m 0755 "$manifest_dir"
install -m 0644 "$temporary" "$manifest"
printf 'added %s %s %s from circlesac/%s\n' \
  "$package" "$version" "$architecture" "$repository"
