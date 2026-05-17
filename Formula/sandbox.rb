class Sandbox < Formula
  desc "Self-hosted E2B-compatible sandbox management CLI"
  homepage "https://github.com/circlesac/sandbox"
  version "26.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-darwin-arm64.tar.gz"
      sha256 "1dbd2a2f6e61b63d08f22dc2e886ea4739492dea88702b74cc80ae23e4232d61"
    end
    on_intel do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-darwin-amd64.tar.gz"
      sha256 "936b1947c486eacbcc0f7c0a1014b1cc0e529303a5dd01df3870da73e198da75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-linux-arm64.tar.gz"
      sha256 "c62ff3b8a36d251f62c9e45232e83095447870510944b06c1ac43565413111a2"
    end
    on_intel do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-linux-amd64.tar.gz"
      sha256 "0852578befb6bd10c0be26c5690541f3ec3d32638f2d831a46d517425b965d65"
    end
  end

  def install
    bin.install "sandbox"
  end

  test do
    system "#{bin}/sandbox", "--help"
  end
end
