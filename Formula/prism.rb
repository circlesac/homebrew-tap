class Prism < Formula
  desc "Manage provider accounts for Prism"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.8.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "89466a90d2d69efa4c2d66b1bd78d4021f37a23fdb801806197e2957d782d493"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "b6c397a4b2bc2b62e9b5ff0091abfe30c4429949cac1b1fa2e627041cb71c72c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "a33e010e4c0be26dc65dc04aadefddeba9169d33a002888d52c92c7b7c64ea4d"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "e8975f160e1184e0166eb133f8fe9c9efd6f078f51bf27c75bdf7eb2b61c1d1c"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
