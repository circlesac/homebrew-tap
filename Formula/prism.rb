class Prism < Formula
  desc "Manage provider accounts for Prism"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "7e8fb6ea1862065f3a7adfc3c45ea2c913b06c266453d38039796e7c52839d78"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "e0e73810c814eca06e99cebc377f91b2f2081293116956ea8eb337b3c5d32f40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "61a2a192beb798ba7c6b6f2ba6261608d3024e08c3ea2edbf54ca1b0927bac7e"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "273bf37e3ba88cb17dbcece5fd2a289412757c8d8dc9688f836fd17a69689b2d"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
