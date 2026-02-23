class Cgrok < Formula
  desc "An ngrok-like CLI that uses Cloudflare for secure tunneling"
  homepage "https://github.com/circlesac/cgrok"
  version "26.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-darwin-arm64.tar.gz"
      sha256 "a800d66226118b05490138e6b4057ff2b1d0b02496bbaa66899c3f704e5c7359"
    end
    on_intel do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-darwin-x64.tar.gz"
      sha256 "56cadc5defee742141e9db4c4d81749fb834ff62100720b3feb1618998a311fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-linux-arm64.tar.gz"
      sha256 "5c3889cf37f2dc6696e5cc6cabd721ca75a4f65a1e647aee9ac3b10d5a39209d"
    end
    on_intel do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-linux-x64.tar.gz"
      sha256 "fe5fa8ac8401cb36a65d6a7df87a0f908c785d90bfce493ead07af28add42393"
    end
  end

  def install
    bin.install "cgrok"
  end

  test do
    system "#{bin}/cgrok", "--help"
  end
end
