class Prism < Formula
  desc "Manage provider accounts for Prism"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.9.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "7589116cad3e318cb46cfd704ab9e15143d2696e2658a527faa504205c6a90b7"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "e38a0fa3bcc512597ef8cc71dcccf57d061081ee502dc8bfef8738d457bd8f89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "94d624a7416f5c88e8aaaabde714f4991b67d57433d9506b1624a855c9ceb5d0"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "28b02ff81a31167261d492b7142d27380f2db176d82ab1c6861bc63a9c3a86d0"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
