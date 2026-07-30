# Circles package indexes

This repository serves both Circles package-manager indexes:

- `Formula/` is the Homebrew tap used by `circlesac/tap`.
- `apt/` builds the signed flat APT index published from this repository's
  latest GitHub Release.

Package binaries remain in each CLI repository's GitHub Release. This
repository stores Homebrew formulae and immutable APT package manifests only.

## Homebrew

Install the desired CLI with `brew install circlesac/tap/<formula>`, using the
formula name documented in that CLI's repository.

## Debian and Ubuntu

```sh
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg

tmp_key="$(mktemp)"
curl -fsSL -o "$tmp_key" \
  https://github.com/circlesac/homebrew-tap/releases/latest/download/circlesac-archive-keyring.asc
fingerprint="$(gpg --batch --show-keys --with-colons "$tmp_key" 2>/dev/null \
  | awk -F: '$1 == "fpr" {print $10; exit}')"
test "$fingerprint" = "EDEB035445B676C3D9C4CFA2263CBDF3A243818E"

sudo install -d -m 0755 /etc/apt/keyrings
sudo install -m 0644 "$tmp_key" /etc/apt/keyrings/circlesac-archive-keyring.asc
rm -f "$tmp_key"

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/circlesac-archive-keyring.asc] https://github.com/circlesac/homebrew-tap/releases/latest/download ./" \
  | sudo tee /etc/apt/sources.list.d/circlesac.list >/dev/null
sudo apt-get update
```

Then install the desired CLI with `sudo apt-get install <package>`, using the
package name documented in that CLI's repository. Package names match their
installed commands, although source repository names may end in `-cli`.
