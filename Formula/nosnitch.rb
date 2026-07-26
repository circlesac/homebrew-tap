class Nosnitch < Formula
  desc "Stop your coding agent from snitching your code to model training"
  homepage "https://github.com/circlesac/nosnitch-cli"
  version "26.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-darwin-arm64.tar.gz"
      sha256 "f0395ca4d27edaceaa27b4241865ef8f7b848d637e70d50c9a8132e9ba160866"
    end
    on_intel do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-darwin-amd64.tar.gz"
      sha256 "56025c86e6905b5a4cee243179bca85e74f51e1dfc32cdcd433bf17163ab02f2"
    end
  end

  def install
    bin.install "nosnitch"
  end

  test do
    system "#{bin}/nosnitch", "version"
  end
end
