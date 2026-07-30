class Prism < Formula
  desc "Register provider credentials for Prism in Circles Vault"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "c04e3e171233f07265577103871512073bdab6754fd903e4ad3b6ca9418636f9"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "ebbca48dd2f869df8c607d629b37305e2aae571013f760ee9da658c7e01d06e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "3a807ab7a358dfe389f7ef80c78d111d2e76e12deea8fb890d0285842927092f"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "4aa1f6aff7e2755879d23b58d6a9b2620d9659123474976b266d1da8d411ca09"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
