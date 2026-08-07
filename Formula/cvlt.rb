class Cvlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/vault"
  version "26.8.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-darwin-arm64.tar.gz"
      sha256 "2fb1efb879c20fcd2efd3f50afb34b8b5124dcfb766ff5a6a905ebb99ae964b4"
    end
    on_intel do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-darwin-amd64.tar.gz"
      sha256 "d38772e91781d62f168503f3ff75329c5f243deaea0a6d80807692218414fc10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-linux-arm64.tar.gz"
      sha256 "5fbbdc3bc7d469bdee7cb73312ad3541a2dbb0ae36ebc1348a38806ae9cd9ce3"
    end
    on_intel do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-linux-amd64.tar.gz"
      sha256 "69fe68ec121b35ccc7eae09b20cb13d29ffca001c92ed09498957cf1c9d06f11"
    end
  end

  def install
    bin.install "cvlt"
  end

  test do
    system bin/"cvlt", "--help"
  end
end
