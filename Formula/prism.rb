class Prism < Formula
  desc "Manage provider accounts for Prism"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.8.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "8b4825084e0018eb80eff4c5baf2d5b305e96758ccc844737259d57541d399e2"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "71adb012d04e16f27e2fe6afa683835142d69741d04e9fc27883c5102c52614a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "dde3a1b89e7d7e96c3958a1b4d6e935968b6bc4cb373625ef1b514db1c8b836e"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "d8803a98636294d546d43b5e3c53a3a3e8732ebd87d3d4efae3d823c2c0ca89d"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
