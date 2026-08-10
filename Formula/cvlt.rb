class Cvlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/vault"
  version "26.8.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-darwin-arm64.tar.gz"
      sha256 "73c09bb3e2429f37515dcca0308a48587a044b03132a580dbba67a98165606e6"
    end
    on_intel do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-darwin-amd64.tar.gz"
      sha256 "280fa9633ca4d2fd35890eacc9b74917dd077f1ea9d27b44c17d0c9558761430"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-linux-arm64.tar.gz"
      sha256 "dc2331a7d7ab48b2a0baf16ac27580f6518d8b41dd017c5c944bc530a8f3b538"
    end
    on_intel do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-linux-amd64.tar.gz"
      sha256 "b7759c3d2f8bfe91924ea7e82dd279ca05f2d552c3007139f2b15a3f40c19b11"
    end
  end

  def install
    bin.install "cvlt"
  end

  test do
    system bin/"cvlt", "--help"
  end
end
