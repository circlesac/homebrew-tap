class Cvlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/cvlt-cli"
  version "26.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-darwin-arm64.tar.gz"
      sha256 "e9717609a35d43ebcfc5d3ecad3b18b172af10c5dd3f53799ce290608226eae8"
    end
    on_intel do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-darwin-amd64.tar.gz"
      sha256 "00db3399d544b45a4f8d0030d98b313d90c711383c23eec0623deb38e54dc6c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-linux-arm64.tar.gz"
      sha256 "e1ea6493e02499f8606e0a48537582127c5535e3543e825a67821796a6c8cc6d"
    end
    on_intel do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-linux-amd64.tar.gz"
      sha256 "27761442fbbb1a979b636b19424aa3fb6ea626957adc7f33e1e7315c973b5296"
    end
  end

  def install
    bin.install "cvlt"
  end

  test do
    system bin/"cvlt", "--help"
  end
end
