class Crcl < Formula
  desc "Circles CLI — manage orgs, API keys, and authenticate with circles.ac"
  homepage "https://github.com/circlesac/crcl"
  version "26.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-arm64.tar.gz"
      sha256 "68f90f171e2cf600b10f87722aa7f0bcbb5a731773c177335848e344e0419d2a"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-amd64.tar.gz"
      sha256 "0e2bd3b22fdda8fd0e860a61def673ba3dfea40e7a003cc5b5195a05d2b70035"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-arm64.tar.gz"
      sha256 "75718f4eb96c6b78d2ee51f678a905a77f34f0a85c6048f20ccde4678637107d"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-amd64.tar.gz"
      sha256 "07e88fa5c09985b51f7cd91a08a1e3eea97e8cf338ef6ec0f6392d1ccbd3f6ae"
    end
  end

  def install
    bin.install "crcl"
  end

  test do
    system "#{bin}/crcl", "--help"
  end
end
