class Crcl < Formula
  desc "Circles CLI — manage orgs, API keys, and authenticate with circles.ac"
  homepage "https://github.com/circlesac/crcl"
  version "26.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-arm64.tar.gz"
      sha256 "0cfbcfe0089f3a7403138dea38dce2d73b741a6ba707af8be6ab537e26d03012"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-amd64.tar.gz"
      sha256 "595fa1e5a0737317ad010ea0a3e7acf9bf37acac5645be4ccc4d6db9223bb09b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-arm64.tar.gz"
      sha256 "ef8d2eef02b6d7c98d48b7a57b60bbc46c6e5dca32c838ce0af60b6e7b6fd7e7"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-amd64.tar.gz"
      sha256 "62bbc7b9b7cb9bcb3044b9ed052f9b04620ba854c79e2933cf7548b42b5b0c9b"
    end
  end

  def install
    bin.install "crcl"
  end

  test do
    system "#{bin}/crcl", "--help"
  end
end
