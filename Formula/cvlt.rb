class Cvlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/cvlt-cli"
  version "26.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-darwin-arm64.tar.gz"
      sha256 "fba873faad23aec7e53a8a6d8c8e37f2789cca86ac44aaa2a1d9c251274e24f9"
    end
    on_intel do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-darwin-amd64.tar.gz"
      sha256 "f714bb7551648ecbf330fa06d161200bc97176677ce0aaa6633ef8c26ae4434c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-linux-arm64.tar.gz"
      sha256 "b1a3bb641bbe0b0ae9e4b35a1a4d4c650c167486fb26c4ce953f39e104c38aed"
    end
    on_intel do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-linux-amd64.tar.gz"
      sha256 "068de6fb4ae972dae10bb1fb9aea85e84085b1cb5b0dfb310a8cc27f4276d600"
    end
  end

  def install
    bin.install "cvlt"
  end

  test do
    system bin/"cvlt", "--help"
  end
end
