class Sandbox < Formula
  desc "Self-hosted E2B-compatible sandbox management CLI"
  homepage "https://github.com/circlesac/sandbox"
  version "26.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-darwin-arm64.tar.gz"
      sha256 "90f485ca1cb1e0ddf1ec714002555c039f7b611c7e0da223f21abd6ebf202e0b"
    end
    on_intel do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-darwin-amd64.tar.gz"
      sha256 "a5bdb109f9541c33fa1ce43a640fdf8ce8a42f8f2efa8e1f920f36624917ece5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-linux-arm64.tar.gz"
      sha256 "2e6ce4ae4a852093e9b76443e249eba51e7c64174193b1500cd615e18e059c45"
    end
    on_intel do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-linux-amd64.tar.gz"
      sha256 "373bf8b8893efd89e37739396d046b8407abbd1b154099c73a3cd2934ac72736"
    end
  end

  def install
    bin.install "sandbox"
  end

  test do
    system "#{bin}/sandbox", "--help"
  end
end
