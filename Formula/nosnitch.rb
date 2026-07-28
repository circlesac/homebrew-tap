class Nosnitch < Formula
  desc "Stop your coding agent from snitching your code to model training"
  homepage "https://github.com/circlesac/nosnitch-cli"
  version "26.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-darwin-arm64.tar.gz"
      sha256 "96517705453fe9964423561dd4308858b5e0a91756848faffd743896f6465015"
    end
    on_intel do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-darwin-amd64.tar.gz"
      sha256 "5158e3debf4242007305d8eea39c0618d0c926d9efff883db390404d14e39bad"
    end
  end

  def install
    bin.install "nosnitch"
  end

  test do
    system "#{bin}/nosnitch", "version"
  end
end
