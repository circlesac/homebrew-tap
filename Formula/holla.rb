class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "7ce5dadc0f330bcc420644b8b49bf862c2fa89ecad88991b04f3d1ad22290e16"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "0017128d68cfc4f31e46cfb89b3d4fef2930cbf31fb4ed94869e8cd048138e92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "874488c80009beac82229bdf65a586a0878db1a09aadc94dd44539cc3e5c093b"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "58152b40b026cfe1d703869d2422edf47bdfc7bcf46acc98970ce7c6c095a305"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
