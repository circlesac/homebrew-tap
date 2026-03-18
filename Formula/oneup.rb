class Oneup < Formula
  desc "CalVer-based version management for npm packages"
  homepage "https://github.com/circlesac/oneup"
  version "26.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-aarch64-apple-darwin.tar.gz"
      sha256 "315ffe39f25afd0ebb0e82f0614c6587e23648bfce5aecef2b5c40ed4f0d9153"
    end
    on_intel do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-x86_64-apple-darwin.tar.gz"
      sha256 "62d1731ac4a2851a9f44a54bf304c976c5feb5ee9c07d2366c8047a0005ee53f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a5dcabd9840ef5a9d2fc781fac2b2d7fe10490fe8051bc367e051c1748b8b71"
    end
    on_intel do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef6d9c748d769ec508b4b9b627246433b5f67f06a7ec085cfdaa8613bffcbf87"
    end
  end

  def install
    bin.install "oneup"
  end

  test do
    system "#{bin}/oneup", "--help"
  end
end
