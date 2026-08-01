class Crcl < Formula
  desc "Circles CLI — manage orgs, API keys, and authenticate with circles.ac"
  homepage "https://github.com/circlesac/crcl-cli"
  version "26.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-arm64.tar.gz"
      sha256 "f91e713549e15e3079ce4afc83268897d2fd18478cf1db25a78e9c1d80efa546"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-amd64.tar.gz"
      sha256 "98f5731ab1fa387183903c25f87749e832414c177dd5cc4d83540c3531aecd9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-arm64.tar.gz"
      sha256 "ffc428fc8fbd850baf82523ae47f0d0c7ec8d747cbaf0a1ee6c523c0959e52a9"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-amd64.tar.gz"
      sha256 "7eafbaf14be466a8ea18d5c0985bb7ebd635cee102a057fb34c8c6560ea2c13d"
    end
  end

  def install
    bin.install "crcl"
  end

  test do
    system "#{bin}/crcl", "--help"
  end
end
