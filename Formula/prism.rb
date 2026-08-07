class Prism < Formula
  desc "Manage provider accounts for Prism"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.8.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "725560bae6ff36b20f5d32bcffec920d16a358bca4fdd43f97423d88fcf942de"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "4637b4ef17044f412616188e0a77a45ba7a41cf1a887f78ca77ae1e7518d8a70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "dab8e6ca2f184e3556f32cc264b1b8738369d9a614857e9618afb2470b57167a"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "f80a3e7112f6eb7bcec7dc4910516c20701aa5d9ba6855ac058c4a7a27f33013"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
