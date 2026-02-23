class Cgrok < Formula
  desc "An ngrok-like CLI that uses Cloudflare for secure tunneling"
  homepage "https://github.com/circlesac/cgrok"
  version "26.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-darwin-arm64.tar.gz"
      sha256 "ccf3e63f318e00e0816cab67b8efe81619dd7f5376eca10e676bdbb687bcc235"
    end
    on_intel do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-darwin-x64.tar.gz"
      sha256 "4b306ce76329bd4728a84665248a6aa6812faefbe70b21ebcd1875a335ce8741"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-linux-arm64.tar.gz"
      sha256 "2a2226f006b05a1640f4c2a0aa53f5e9f27fd12827cd88afcf7bda57e7004b5b"
    end
    on_intel do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-linux-x64.tar.gz"
      sha256 "f60d46b40c3d6ba6e350a90903e0302d05471bb1370e71d551d161032a5e3baa"
    end
  end

  def install
    bin.install "cgrok"
  end

  test do
    system "#{bin}/cgrok", "--help"
  end
end
