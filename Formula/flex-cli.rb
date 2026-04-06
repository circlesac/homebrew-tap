class FlexCli < Formula
  desc "CLI for Flex HR (flex.team)"
  homepage "https://github.com/circlesac/flex-cli"
  version "26.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flex-darwin-arm64.tar.gz"
      sha256 "d3fbdad4b0880f0b106361ef77c532d642bafe766c1c291939819beb3ca670ad"
    end
    on_intel do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flex-darwin-x64.tar.gz"
      sha256 "72958e572d7027972f9922018ecbb6a0879568d3eee208ba2430e428494d7e71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flex-linux-arm64.tar.gz"
      sha256 "16047027c66ab34f2b12b3c6b11562bafde9e52c663f2f411a908db1be187c2f"
    end
    on_intel do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flex-linux-x64.tar.gz"
      sha256 "ccc21390da3f119bc0f5210f87235ab2d1d4ec1a5cfaf3d6625e1d6068159fdb"
    end
  end

  def install
    bin.install "flex"
  end

  test do
    system "#{bin}/flex", "--help"
  end
end
