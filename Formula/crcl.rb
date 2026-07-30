class Crcl < Formula
  desc "Circles CLI — manage orgs, API keys, and authenticate with circles.ac"
  homepage "https://github.com/circlesac/crcl-cli"
  version "26.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-arm64.tar.gz"
      sha256 "5f8500ba0f8da0d841ddd63044e3ae68e1d032e8c26b56d37bc0ca9235aee521"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-amd64.tar.gz"
      sha256 "ec9fd07fae32a526dbbf3e0ed699b2e0168288dd1b2bcdb3e1772b65bc4d2ef4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-arm64.tar.gz"
      sha256 "6af6f1a6853236f4067404562789d6eac56df3d3e0ecdae6f1945b9e286e8cab"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-amd64.tar.gz"
      sha256 "ceb5a3bc82658502dbff10ffd2dfc9b898149a61682588493e00cee26ab3612f"
    end
  end

  def install
    bin.install "crcl"
  end

  test do
    system "#{bin}/crcl", "--help"
  end
end
