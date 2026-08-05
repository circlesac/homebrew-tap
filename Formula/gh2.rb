class Gh2 < Formula
  desc "GitHub App lifecycle CLI — create, register, and manage GitHub Apps from the terminal"
  homepage "https://github.com/circlesac/gh2-cli"
  version "26.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-darwin-arm64.tar.gz"
      sha256 "d27826242c31fc1c94513c56c428669d7d1ced73a0a5f5cd6ef0598495e21156"
    end
    on_intel do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-darwin-x64.tar.gz"
      sha256 "8f5a68b69749cec7a21bd7760aee64718b2a558cc8dd6d7b89dcd5e9e9fc29c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-linux-arm64.tar.gz"
      sha256 "9ea84e73c8e2ed4e575d9aa2f34824b92a135bcf11d925072a63caa9470a4b55"
    end
    on_intel do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-linux-x64.tar.gz"
      sha256 "fbe70eaee0a5745c42031cc35471fd47b63792f3ce56e7e36d183ade1b53157e"
    end
  end

  def install
    bin.install "gh2"
  end

  test do
    system "#{bin}/gh2", "--help"
  end
end
