class Prism < Formula
  desc "Register provider credentials for Prism in Circles Vault"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "482103c9bdac8ebda20b9ad4a0229d49df6b5eecc93c3837d2449f5b768e81d1"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "7473ba3350e5181ab938d4def5bd9c1027fda6b8ab2c0c706dd009efa75fe588"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "9ba9015fa9d808f9ded19d35ff132d54971c3e203658913d352dbbeecc9671c8"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "2457b5ed6309f301c3b5a07910260192cf99cd19bd023d15eaafa45eedd6627a"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
