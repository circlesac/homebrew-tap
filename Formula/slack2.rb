class Slack2 < Formula
  desc "Slack app lifecycle CLI — create, install, and manage Slack apps from the terminal"
  homepage "https://github.com/circlesac/slack2-cli"
  version "26.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-darwin-arm64.tar.gz"
      sha256 "c5c2fd72bc60f4ae82ffa77177b8c10177de56f358777c77f3ef646d470b4569"
    end
    on_intel do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-darwin-x64.tar.gz"
      sha256 "735d1e34817aa1fd6db8554ca8a2a25f6c3274de08646d1d2360d42475365ff7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-linux-arm64.tar.gz"
      sha256 "7d26a3ea6b1b4150c31f8f99856c130d534ef62b7d35c05bc35c2f0866ac9107"
    end
    on_intel do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-linux-x64.tar.gz"
      sha256 "1bf743622d40680944bbdec8a6497a07b5a2eae22a7ed7bc812fee7cdc1b73c5"
    end
  end

  def install
    bin.install "slack2"
  end

  test do
    system "#{bin}/slack2", "--help"
  end
end
