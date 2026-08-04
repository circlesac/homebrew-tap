class Prism < Formula
  desc "Register provider credentials for Prism in Circles Vault"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.8.1"
  license "MIT"

  depends_on "cvlt"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "87ce04dfbde2e7952a43628c3cf6bc8eff92ae3c90a9f82dab42c0f912cd17cc"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "254fdabf864c973dd8c16c876ed6951bca5c460a42b60e60e0a8b6c32ce07f49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "8e21abe9e72c1c94bb67c25586ed71fdf527a148880fd016d96d62cfa3c71152"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "63543289f2715b1563559d9fda9b0793ab1aaaf51e95493080b8794623f69cd3"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
