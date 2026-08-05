class Gh2 < Formula
  desc "GitHub App lifecycle CLI — create, register, and manage GitHub Apps from the terminal"
  homepage "https://github.com/circlesac/gh2-cli"
  version "26.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-darwin-arm64.tar.gz"
      sha256 "cfd054580946399d8228bf62bfe2b7f1b52021b6d1c1768f4f0b1bd3c11b9865"
    end
    on_intel do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-darwin-x64.tar.gz"
      sha256 "6f517fcec4f4193746176e21beb70c053a9f3f328b6f59ad7acd5a15ec6ef90f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-linux-arm64.tar.gz"
      sha256 "cac89b6e2887819b86a50c37c9882a18e91363c5d55465d122fb17a6c27446b6"
    end
    on_intel do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-linux-x64.tar.gz"
      sha256 "656fffbcf50a73e9670f02b61696d4c8b7894b64199f8b79d8d1c433090a6d77"
    end
  end

  def install
    bin.install "gh2"
  end

  test do
    system "#{bin}/gh2", "--help"
  end
end
