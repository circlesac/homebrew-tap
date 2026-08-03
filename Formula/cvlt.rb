class Cvlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/cvlt-cli"
  version "26.8.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-darwin-arm64.tar.gz"
      sha256 "d7210474fa94bf0b3619b7be9ff32fd8a7c3be1593182b8d824ab90c4090fa7c"
    end
    on_intel do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-darwin-amd64.tar.gz"
      sha256 "d4e2fc3626717350285e532217f407401e42789265f7a4622ae012291ad2b5dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-linux-arm64.tar.gz"
      sha256 "3c6ce9cd135010720c5d1a88755e6300158cb1f19383c52f3358e3e25bed2459"
    end
    on_intel do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-linux-amd64.tar.gz"
      sha256 "707f5b09e24dd8a89cc52dd6d9be8a292636390f98839eaf766de279ef6464e2"
    end
  end

  def install
    bin.install "cvlt"
  end

  test do
    system bin/"cvlt", "--help"
  end
end
