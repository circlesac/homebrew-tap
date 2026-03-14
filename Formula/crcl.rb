class Crcl < Formula
  desc "Circles CLI — manage orgs, API keys, and authenticate with circles.ac"
  homepage "https://github.com/circlesac/crcl"
  version "26.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-arm64.tar.gz"
      sha256 "9d0cc4d3191bc66e5472f8d47803f79a1862bf06f84e0e2d1fe5c41c64fe4566"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-amd64.tar.gz"
      sha256 "cf4c7668a7cf14f56492816d3397fd3780d11dacb67378bf34afc514d856f744"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-arm64.tar.gz"
      sha256 "d379f0f7c6008bfda46c4afa1511246d0d50ea4fc9b58b4fbf4298e9da8b88f4"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-amd64.tar.gz"
      sha256 "1a133716eb50387f5db7c12015d05298f46fe0340cf9a001a9cf20e6d74450a3"
    end
  end

  def install
    bin.install "crcl"
  end

  test do
    system "#{bin}/crcl", "--help"
  end
end
