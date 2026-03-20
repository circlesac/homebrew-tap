class Cgrok < Formula
  desc "An ngrok-like CLI that uses Cloudflare for secure tunneling"
  homepage "https://github.com/circlesac/cgrok"
  version "26.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-darwin-arm64.tar.gz"
      sha256 "2149955720281be821294a017758cd81c0fedde51e9881a6c56a72ed6bc1c6ad"
    end
    on_intel do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-darwin-x64.tar.gz"
      sha256 "72d6637b2a486aac76345da2d427d78e5f6e0fa3ffea582ed966f92ae4a993f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-linux-arm64.tar.gz"
      sha256 "a65699735b113826fdd37832585a3eb725a998f178107308181440e3592585d9"
    end
    on_intel do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-linux-x64.tar.gz"
      sha256 "52d6af62921a749cd357f1b23035828296567b5da2a9ce5c556de789152aa8ff"
    end
  end

  def install
    bin.install "cgrok"
  end

  test do
    system "#{bin}/cgrok", "--help"
  end
end
