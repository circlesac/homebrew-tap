class Prism < Formula
  desc "Manage provider accounts for Prism"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "ddabb07b33d4d64273ec8a110c8c61d492855c0c68f268c6a0ffd1ead0d8c8a5"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "0e1f8f5bee73029ac552b96a0a9ef7bdfeea7e7437ffdd029526d629cf77cdb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "02c9f92945ef57f8a0dc372452527c56a343b2afa532403073b6ee034364056b"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "e4a86ce0c4c7ab02840240f2ca45d8b31a518a79a59fc95af73da3226a79dc0e"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
