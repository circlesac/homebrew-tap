class Crcl < Formula
  desc "Circles CLI — manage orgs, API keys, and authenticate with circles.ac"
  homepage "https://github.com/circlesac/crcl"
  version "26.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-arm64.tar.gz"
      sha256 "e3bc991b1cfbf92c19db4d17b5e90a55ee11c2b58633fd5399c8ac4a394a7d6f"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-amd64.tar.gz"
      sha256 "978ca073909c3d6166affa4eeb3a596e4b09f9d6b77425b1f14bd6ba186c681f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-arm64.tar.gz"
      sha256 "52f18d808f3036f9e1ff5985b1c49a88097ef17718f86e95a0a2cbe3a3184c4e"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-amd64.tar.gz"
      sha256 "a0ef4648b69325b8bb573c4015b71d213d899b7e9a16d13af8336de3fe3d88d3"
    end
  end

  def install
    bin.install "crcl"
  end

  test do
    system "#{bin}/crcl", "--help"
  end
end
