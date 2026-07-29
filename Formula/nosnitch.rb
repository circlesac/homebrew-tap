class Nosnitch < Formula
  desc "Stop your coding agent from snitching your code to model training"
  homepage "https://github.com/circlesac/nosnitch-cli"
  version "26.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-darwin-arm64.tar.gz"
      sha256 "2b3ad07966f3d3b59ee576b381cf17946570cc8c8b7243e9209883c515ec7d0f"
    end
    on_intel do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-darwin-amd64.tar.gz"
      sha256 "125dcf58f198447082ce7609dc65dd8578fc9a7f0d7771f3aae926e2a02fbe12"
    end
  end

  on_linux do
    depends_on "libsecret"
    on_arm do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-linux-arm64.tar.gz"
      sha256 "075651da3d19bdd823e34768a08b1ea942b43b07e53f89c8c1be113272a64cd8"
    end
    on_intel do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-linux-amd64.tar.gz"
      sha256 "33e5adf50ba3f1c878feab8d4a6b69ec278f20c41859334cb8c5fddc85eaf7ce"
    end
  end

  def install
    bin.install "nosnitch"
  end

  test do
    system "#{bin}/nosnitch", "version"
  end
end
