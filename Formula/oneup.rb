class Oneup < Formula
  desc "CalVer-based version management for npm packages"
  homepage "https://github.com/circlesac/oneup"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_ARM64"
    end
    on_intel do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_X64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"
    end
    on_intel do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_X64"
    end
  end

  def install
    bin.install "oneup"
  end

  test do
    system "#{bin}/oneup", "--help"
  end
end
