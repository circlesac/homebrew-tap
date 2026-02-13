class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "dc868a09ad0f21e58e69ba9c2884c8a8dd2c7a974d0817e9321328012d5ceb5c"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "f991c4a02603a2b05f1b30d1db939f664ab8232c36f1c763fdbf1bc82fe7fd3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "ee2af0b2fc06f080ed834450cedf102362916badea7a7ac08bd4a8f8412bf516"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "33130971bd2b3822a99b2a111991617a22423a9f0e63cdf9203b1770010a2950"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
