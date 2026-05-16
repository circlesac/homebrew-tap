class Notas < Formula
  desc "Multi-provider notes & docs CLI"
  homepage "https://github.com/circlesac/notas-cli"
  version "26.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-darwin-arm64.tar.gz"
      sha256 "7afa9669f17da0ab6ad59d677f878fbb161dffe0745a3aae5e8ff2b9c1d5fddc"
    end
    on_intel do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-darwin-x64.tar.gz"
      sha256 "2f8b01d2847649b39a8979bc46e85adb863a46e40a70197198b5976546a62a39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-linux-arm64.tar.gz"
      sha256 "32c9f45d7e6ec88ff949bef91c745f0d23ee8e29300fa99c0584d99ca2705c48"
    end
    on_intel do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-linux-x64.tar.gz"
      sha256 "6563790e7cda5b149199f56457921127af11d1718f7f068df6b0bf9fd6f4cb7f"
    end
  end

  def install
    bin.install "notas"
  end

  test do
    system "#{bin}/notas", "--help"
  end
end
