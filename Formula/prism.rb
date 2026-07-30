class Prism < Formula
  desc "Register provider credentials for Prism in Circles Vault"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "e71324a070ee602896e1dac3a41b339a8f0195c39e954b33b6d3dca62ec5d646"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "d83ad157d241765e8f8007297d16cedbc3fbccd3f421b39e2c38a467fc81cded"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "fb4cd58fd06978b628869cb77500aa8c3e409d5834aa1e6fb2d595585338fc0d"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "59d88d50c5e32c172ada9029cfe8f16f606a5a2fae2ed19c9695f3436ba5f90f"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
