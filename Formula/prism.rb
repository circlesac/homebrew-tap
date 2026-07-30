class Prism < Formula
  desc "Register provider credentials for Prism in Circles Vault"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "5a05638f889c325c7e5820dfdcb3cd675ba44259e970a44987169cd380c36947"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "9d4af4b9399587bbe224f2b29dc41b37fd9f02fea5b427aff46ab3b9c9b055ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "692b485997b3643c4f4f73d95b9e61c13267943f0faae4e4a2f1cb18587931b6"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "409dcd060d44e447c4e62c8d826317cd9a5ed7534f2b460fa0236ad13fad6f5b"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
