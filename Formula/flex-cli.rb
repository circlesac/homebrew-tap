class FlexCli < Formula
  desc "CLI for Flex HR (flex.team)"
  homepage "https://github.com/circlesac/flex-cli"
  version "26.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-darwin-arm64.tar.gz"
      sha256 "1f6498df5231dd8376be1014d942ce481d7a4a3a0aa9c2f1fa8ae1eae1371ac0"
    end
    on_intel do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-darwin-x64.tar.gz"
      sha256 "04c8a52f933399caea8b65eb657a3c320d4587c234af442e5926f75e25b7471e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-linux-arm64.tar.gz"
      sha256 "313b1a134089b608acd38f962151b44efa9ed8e70259586d0856bd9ab6e35b43"
    end
    on_intel do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-linux-x64.tar.gz"
      sha256 "33008f38b34df00ad4edce8982cc22f77c7a687797977481ca26006c459790a4"
    end
  end

  def install
    bin.install "flexhr"
  end

  test do
    system "#{bin}/flexhr", "--help"
  end
end
