class Prism < Formula
  desc "Register provider credentials for Prism in Circles Vault"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.8.3"
  license "MIT"

  depends_on "cvlt"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "6dc9dcaa6b1d0825a36a5e91061896b45c80d7a0096ce9764ab1248c36e44ac9"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "244b325fd49137aa6de005d3e72773bb8b50cca309a042eb469f6e29ad676685"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "357b2474d7bbcfc883af206b95ff5651aac6aaf422c4d98ac65ecc88b4c73b38"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "f2307c9537d852659e3c8ee467cfa15432aa029c6eea0128fd87f65495e43d15"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
