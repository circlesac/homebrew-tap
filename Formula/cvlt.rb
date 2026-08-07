class Cvlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/vault"
  version "26.8.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-darwin-arm64.tar.gz"
      sha256 "e8cb0a63f235993ba1fdad7a333f3ebdc81578f22eefd882da2410bf757b7468"
    end
    on_intel do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-darwin-amd64.tar.gz"
      sha256 "2e10e5f5e8ee29145e67c42b1eed17666ed16ac17dd36bab049bf7f0507bd0d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-linux-arm64.tar.gz"
      sha256 "99a3d0b20f192feea45d249e44c24cdade5c02c3f4eea78965a19de91287ba76"
    end
    on_intel do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-linux-amd64.tar.gz"
      sha256 "dbcc57921ef859d28c28606b2286202822dd32ad9e00e5ee29517c4dbc3853c3"
    end
  end

  def install
    bin.install "cvlt"
  end

  test do
    system bin/"cvlt", "--help"
  end
end
