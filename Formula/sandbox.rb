class Sandbox < Formula
  desc "Self-hosted E2B-compatible sandbox management CLI"
  homepage "https://github.com/circlesac/sandbox"
  version "26.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-darwin-arm64.tar.gz"
      sha256 "2c764837d8f9f26cf9abbcabf99d3d25751639e27e6649e82f2aeda8903c5d34"
    end
    on_intel do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-darwin-amd64.tar.gz"
      sha256 "58b08e3134c1a5e3bc072c073a9194ab4b8f037af9ce1b17545544dace5b8506"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-linux-arm64.tar.gz"
      sha256 "43f9b38bf6b7ab9f1865d22335b4a3730201c9aecd06a3436244d55cf9f717d1"
    end
    on_intel do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-linux-amd64.tar.gz"
      sha256 "8e2eb892af9f2dca95766a04952fe3eeda1f1a5ad59a8efa156eb48ff08e33ed"
    end
  end

  def install
    bin.install "sandbox"
  end

  test do
    system "#{bin}/sandbox", "--help"
  end
end
