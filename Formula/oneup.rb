class Oneup < Formula
  desc "CalVer-based version management for npm packages"
  homepage "https://github.com/circlesac/oneup"
  version "26.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-aarch64-apple-darwin.tar.gz"
      sha256 "bc2bf00752d20733468d9ac7a8ee7923e70b7263d5115a1691faa573ef542b85"
    end
    on_intel do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-x86_64-apple-darwin.tar.gz"
      sha256 "f7744f65e3a79251442988b7c4abfb164ac2a2b12e48a9355cb1851b20ebf134"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6e4e382f289b1c74880de7a6f8fba5184bcf275dbb533858748f1687a9e9246"
    end
    on_intel do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef5b8514765d85347d4ec3dd20199ecdf90c6a374e947334fa7dd084e727203e"
    end
  end

  def install
    bin.install "oneup"
  end

  test do
    system "#{bin}/oneup", "--help"
  end
end
