class Prism < Formula
  desc "Manage provider accounts for Prism"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.8.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "e28644cd0d69fc0e44d3efe6524fec0b7dbc7f48adac4d912e0465a170c002ad"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "3e1248ae246eb6170af5b9a92787088c48af5c91a5b6622efe833f637975dc0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "08451787b8a16d2de4f59a697fe4067d4085c1e2a9f8de2bcf9d677d18a328fb"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "612357ab1632c8daf1a0108d04b76f1a175d6ee081a2d4534df02f9ef1a68fa9"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
