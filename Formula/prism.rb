class Prism < Formula
  desc "Manage provider accounts for Prism"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.8.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "571283b8ac679e6e69759c1fe3a3e223dfdbed3aede7a486f9f57e6000f1ee37"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "d3dcf7aa6afcc84c6c8c2a4c866d6e212a71956c5c89e03fbf16f340d5aff139"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "be5fb3325f06919f3180e7b7ad2132e10e42ed9d85222ccc38cf51026c9cb898"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "c55ecc6048ede588ea5b8781a28f01896fe26de60e08ce3cbcec2467749be8ff"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
