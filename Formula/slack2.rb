class Slack2 < Formula
  desc "Slack app lifecycle CLI — create, install, and manage Slack apps from the terminal"
  homepage "https://github.com/circlesac/slack2-cli"
  version "26.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-darwin-arm64.tar.gz"
      sha256 "42ab08793de433a5a06a1dd24d8d0e6ca1375ec256424af12cc9a8e789deaf8c"
    end
    on_intel do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-darwin-x64.tar.gz"
      sha256 "62af5d0a712dbaa2df5ab5d8146004309b086f10f4aab72fd70cec0583502800"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-linux-arm64.tar.gz"
      sha256 "77781610b2a9e543602e1cdf1e1845cfa019c0a349d5197c6bffe779e790aa94"
    end
    on_intel do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-linux-x64.tar.gz"
      sha256 "343ff12fa20180b4a40632f3da468689f8df0d7a849851fda54a6383a3605149"
    end
  end

  def install
    bin.install "slack2"
  end

  test do
    system "#{bin}/slack2", "--help"
  end
end
