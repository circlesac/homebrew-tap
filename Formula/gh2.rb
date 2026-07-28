class Gh2 < Formula
  desc "GitHub App lifecycle CLI — create, register, and manage GitHub Apps from the terminal"
  homepage "https://github.com/circlesac/gh2-cli"
  version "26.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-darwin-arm64.tar.gz"
      sha256 "e0b2069076292e0abb8bff8194b70c41d140deb4ad29a0001890377f6bbbdb53"
    end
    on_intel do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-darwin-x64.tar.gz"
      sha256 "8faaa8b77ae64e4d2f3e6626c80b1c96709e46828ae8b05a10b05b4cd81cddf8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-linux-arm64.tar.gz"
      sha256 "e48f5e9eaefdeb6a37867c0c91c5bd16c7a4aa16f5e25b1895a2d3ce40522639"
    end
    on_intel do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-linux-x64.tar.gz"
      sha256 "8da10baf5d4939abed0dad163aec2b34592d662eff9e4bd81a0fca11be53fc49"
    end
  end

  def install
    bin.install "gh2"
  end

  test do
    system "#{bin}/gh2", "--help"
  end
end
