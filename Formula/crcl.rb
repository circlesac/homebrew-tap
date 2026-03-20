class Crcl < Formula
  desc "Circles CLI — manage orgs, API keys, and authenticate with circles.ac"
  homepage "https://github.com/circlesac/crcl"
  version "26.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-arm64.tar.gz"
      sha256 "7f75f3e8f9b2367af263885734e9bae9138e3fc42b2f0fd79346fd51e3a6b76a"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-amd64.tar.gz"
      sha256 "82c52a810c8605a26c1cef8aa0a7b99664f20954044b84b23fb5ff38433797a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-arm64.tar.gz"
      sha256 "605791acf9b2ce4e12431febdce774c66210f6580e9fec5d4ab2296e5aea9e97"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-amd64.tar.gz"
      sha256 "af17785b3be026373e73564a2c1af4dd68ea7b39d50b5d57dc95b114c5f8bc85"
    end
  end

  def install
    bin.install "crcl"
  end

  test do
    system "#{bin}/crcl", "--help"
  end
end
