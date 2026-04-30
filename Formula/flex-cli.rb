class FlexCli < Formula
  desc "CLI for Flex HR (flex.team)"
  homepage "https://github.com/circlesac/flex-cli"
  version "26.4.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-darwin-arm64.tar.gz"
      sha256 "39e7f5d29b6d725f1a561e1df1e82a1b4e0356b09b99f9dab4ede8afb477c06c"
    end
    on_intel do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-darwin-x64.tar.gz"
      sha256 "8f3735f8b3a6a56ce29a44eb60c191de5ec3b6d87cc293d7de848b731f76cee6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-linux-arm64.tar.gz"
      sha256 "738573abf199e0b438866c799be0e9de1f10017e29833c82fb874db594bfc6bb"
    end
    on_intel do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-linux-x64.tar.gz"
      sha256 "30a00fb7538a0c06e0d5ba17521a55296b24a8d1c9bb6b319353057dc31f4dc9"
    end
  end

  def install
    bin.install "flexhr"
  end

  test do
    system "#{bin}/flexhr", "--help"
  end
end
