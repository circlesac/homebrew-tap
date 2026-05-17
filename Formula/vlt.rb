class Vlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/vlt-cli"
  version "26.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-darwin-arm64.tar.gz"
      sha256 "2a1ce92ab29211ea015ee248f2d983deafa82cc2c2b479899572f0ef1444dc85"
    end
    on_intel do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-darwin-amd64.tar.gz"
      sha256 "68a58ac3089d5aaa0032d1b6f77ba21ff0ad4d04c4a698d5b047c24779b1095a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-linux-arm64.tar.gz"
      sha256 "bb0bf58f544d20c2be0d1ec19024beef2c621454ff8f3aeb564fad9272a5ee28"
    end
    on_intel do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-linux-amd64.tar.gz"
      sha256 "056dac858ecb69b81a5d1f6ea01d69c21b791861783b9d48f9d3aaa3a460cd6c"
    end
  end

  def install
    bin.install "vlt"
  end

  test do
    system "#{bin}/vlt", "--help"
  end
end
