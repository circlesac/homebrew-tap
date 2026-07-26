class Slack2 < Formula
  desc "Slack app lifecycle CLI — create, install, and manage Slack apps from the terminal"
  homepage "https://github.com/circlesac/slack2-cli"
  version "26.7.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-darwin-arm64.tar.gz"
      sha256 "e39a71f9a29f811245f320e92803d8b5baba25162b4084cc3070e65104c18f27"
    end
    on_intel do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-darwin-x64.tar.gz"
      sha256 "02f00a237f8e540ab01655646e69c5ab2bad7361682f0b81ca0d1a3752aac1a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-linux-arm64.tar.gz"
      sha256 "17f7b6b4c0c2a35d06f31d37e14f23184fc07509952ccf61c16b152a5e1dab72"
    end
    on_intel do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-linux-x64.tar.gz"
      sha256 "abc0456389e51a76d57750e8ec4719999fc43839df094e9153dd1987f4eebf2a"
    end
  end

  def install
    bin.install "slack2"
  end

  test do
    system "#{bin}/slack2", "--help"
  end
end
