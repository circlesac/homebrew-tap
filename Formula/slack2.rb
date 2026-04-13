class Slack2 < Formula
  desc "Slack app lifecycle CLI — create, install, and manage Slack apps from the terminal"
  homepage "https://github.com/circlesac/slack2-cli"
  version "26.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-darwin-arm64.tar.gz"
      sha256 "eee02a59195ec7556ac52684dcc2dbb620d3987c500bb0697d8b71fe5069c095"
    end
    on_intel do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-darwin-x64.tar.gz"
      sha256 "62eb9aa8e5dc8220f52fafb437e2c9ab37e70933da0cf845ff3001a0ffb25732"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-linux-arm64.tar.gz"
      sha256 "8c778e8b327918a731547919a58b95a7682f081dc8cdfea9b2d0b73f59116a5e"
    end
    on_intel do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-linux-x64.tar.gz"
      sha256 "0ef8a04e8c51979a5057c7be7489a3f5410f1d375366bc459061d3779d78cb34"
    end
  end

  def install
    bin.install "slack2"
  end

  test do
    system "#{bin}/slack2", "--help"
  end
end
