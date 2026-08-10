class Cvlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/vault"
  version "26.8.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-darwin-arm64.tar.gz"
      sha256 "b11f86c8d19484201bec374edf618c15822dfd3e7d5fd9a30ee6e90c3b63c1dd"
    end
    on_intel do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-darwin-amd64.tar.gz"
      sha256 "a63481267cd8797f5d7200de5bf88c2cb7a4802933347af9ea5b147b0bbcc622"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-linux-arm64.tar.gz"
      sha256 "a1fcff01d73d2dc6064bca6ce074f237b7c8363625c150a669b1898a8159cb49"
    end
    on_intel do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-linux-amd64.tar.gz"
      sha256 "8b9f86453795bcc2dc29146c8ac7d2347bb71fdad17436f98c26420eeee52db9"
    end
  end

  def install
    bin.install "cvlt"
  end

  test do
    system bin/"cvlt", "--help"
  end
end
