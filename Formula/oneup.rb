class Oneup < Formula
  desc "CalVer-based version management for npm packages"
  homepage "https://github.com/circlesac/oneup"
  version "26.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-aarch64-apple-darwin.tar.gz"
      sha256 "85cd6f53dd05b47d09fe211872330bda90382a43ab4d3ac3e3e1f17f89654f00"
    end
    on_intel do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-x86_64-apple-darwin.tar.gz"
      sha256 "548ab19cd63b17cc8007783867a253147b2e3841e812a209f0a9027024a0f7e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "827f964289f27c84aa9ce2208d72b580abefbc098a6b3b625227367b3e374688"
    end
    on_intel do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b50f37096dc916d193aec3340882e15d487dc2976071017d7d1c21ae584daa97"
    end
  end

  def install
    bin.install "oneup"
  end

  test do
    system "#{bin}/oneup", "--help"
  end
end
