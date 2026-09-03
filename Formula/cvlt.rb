class Cvlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/vault"
  version "26.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-darwin-arm64.tar.gz"
      sha256 "a3ef1451651a59d6c6a290954f65496119c94155368c99d8ef7f041aa358f84b"
    end
    on_intel do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-darwin-amd64.tar.gz"
      sha256 "30d2b1fbb4d5e7e221efd2ecedf53baa45dd806840e85d742db54be35fbfacc4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-linux-arm64.tar.gz"
      sha256 "4f0c32729b47e072f10c19f5a0546bcc87cfaba946160ef796a855cd51b84412"
    end
    on_intel do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-linux-amd64.tar.gz"
      sha256 "a8c1746da98fb42da3555c671f3c4dfa67f2610ce9c62422c16aaa7e40372ce8"
    end
  end

  def install
    bin.install "cvlt"
  end

  test do
    system bin/"cvlt", "--help"
  end
end
