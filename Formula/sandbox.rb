class Sandbox < Formula
  desc "Self-hosted E2B-compatible sandbox management CLI"
  homepage "https://github.com/circlesac/sandbox"
  version "26.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-darwin-arm64.tar.gz"
      sha256 "273672610793c86c1512f97d04dec30feed5ae5cc0b6b2ac29bcafd36d329a3f"
    end
    on_intel do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-darwin-amd64.tar.gz"
      sha256 "eaaa7a40cf59cc3b49a4c226a76b499dde32c6aa885c50177ed7d9a10f7a1c71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-linux-arm64.tar.gz"
      sha256 "7915c874632f1998629d0920cf5bb9259d2f8bae2d13a9fa90f358e1b843c230"
    end
    on_intel do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-linux-amd64.tar.gz"
      sha256 "5d4443eb60b28fdd4e46fc4d799a99ab116c813fcc5d3ab4350382f4e8902ba4"
    end
  end

  def install
    bin.install "sandbox"
  end

  test do
    system "#{bin}/sandbox", "--help"
  end
end
