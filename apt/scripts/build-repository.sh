#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

if [ "$#" -ne 2 ]; then
  printf 'usage: %s OUTPUT_DIR SIGNING_FINGERPRINT\n' "$0" >&2
  exit 2
fi

output="$1"
fingerprint="$2"
public_key="$ROOT/apt/keyrings/circlesac-archive-keyring.asc"
pinned_fingerprint="$(tr -d '[:space:]' < "$ROOT/apt/keyrings/circlesac-archive-keyring.fingerprint")"

test ! -e "$output" || {
  printf 'output path already exists: %s\n' "$output" >&2
  exit 1
}
test "$fingerprint" = "$pinned_fingerprint"
test "${#fingerprint}" -eq 40
command -v gpg >/dev/null 2>&1
command -v gzip >/dev/null 2>&1
command -v xz >/dev/null 2>&1

"$ROOT/apt/scripts/validate-manifests.sh"

install -d -m 0755 "$output"
packages="$output/Packages"
while IFS= read -r -d '' manifest; do
  sed -n '1,$p' "$manifest" >> "$packages"
  printf '\n' >> "$packages"
done < <(find "$ROOT/apt/manifests" -type f -name '*.deb822' -print0 | sort -z)

gzip -n -9 -c "$packages" > "$output/Packages.gz"
xz -9 -c "$packages" > "$output/Packages.xz"

{
  printf '%s\n' \
    'Origin: Circles' \
    'Label: Circles' \
    'Suite: stable' \
    'Codename: stable' \
    "Date: $(LC_ALL=C date -Ru)" \
    'Architectures: amd64 arm64' \
    'Description: Circles CLI packages' \
    'SHA256:'
  for file in Packages Packages.gz Packages.xz; do
    printf ' %s %s %s\n' \
      "$(sha256sum "$output/$file" | cut -d' ' -f1)" \
      "$(wc -c < "$output/$file" | tr -d ' ')" \
      "$file"
  done
} > "$output/Release"

gpg --batch --yes --local-user "$fingerprint" --armor \
  --detach-sign --output "$output/Release.gpg" "$output/Release"
gpg --batch --yes --local-user "$fingerprint" --armor \
  --clearsign --output "$output/InRelease" "$output/Release"
install -m 0644 "$public_key" "$output/circlesac-archive-keyring.asc"

verify_home="$(mktemp -d)"
trap 'rm -rf "$verify_home"' EXIT
chmod 0700 "$verify_home"
gpg --homedir "$verify_home" --batch --import "$public_key" >/dev/null 2>&1
gpg --homedir "$verify_home" --batch --verify "$output/InRelease" >/dev/null 2>&1
gpg --homedir "$verify_home" --batch --verify \
  "$output/Release.gpg" "$output/Release" >/dev/null 2>&1

printf 'built signed flat APT repository with %s package entries\n' \
  "$(grep -c '^Package: ' "$packages")"
