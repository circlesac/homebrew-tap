class Prism < Formula
  desc "Manage provider accounts for Prism"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "c3a5962d63618ed4f02bab66dfe12eefd70ac7f1f5cfedcad69ec766df89f1de"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "cf37001aa2019e38b6ca6a400d66e9c9d92d8d2c37093778378c17e727ccacba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "5f1d7ae0a854f4dbd97910ccfabeb0ceaf2f250ed32893d6e9011c75bf7cf7b3"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "73966e5319431b4e9e0565a6061861ee3915ec44cc5d903e18399593ffca57f0"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
