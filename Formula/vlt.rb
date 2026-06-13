class Vlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/vlt-cli"
  version "26.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-darwin-arm64.tar.gz"
      sha256 "6e836ce68bd444f8ce4fabf0acc2d9e56f9c5b2981b43031cece781d26ae19ab"
    end
    on_intel do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-darwin-amd64.tar.gz"
      sha256 "3edef0c9e6f585075c2430d8f3047ac0e963647c111f2ee25eb89b49baf8b42e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-linux-arm64.tar.gz"
      sha256 "6503c19f4158cb71c08a1e7dcc99fbc63182298add3d25b7eb72f0b9a1ecaa69"
    end
    on_intel do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-linux-amd64.tar.gz"
      sha256 "85434f0e789c768357a1bba9b1669b4a0fbb5c91c947f2e8f2c0e953dbb9e18b"
    end
  end

  def install
    bin.install "vlt"
  end

  test do
    system "#{bin}/vlt", "--help"
  end
end
