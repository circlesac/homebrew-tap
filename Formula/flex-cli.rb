class FlexCli < Formula
  desc "CLI for Flex HR (flex.team)"
  homepage "https://github.com/circlesac/flex-cli"
  version "26.4.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-darwin-arm64.tar.gz"
      sha256 "d953850b134b364aee0010d9bfb23e9eaa49e5b2adb61264119881dc593a13aa"
    end
    on_intel do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-darwin-x64.tar.gz"
      sha256 "91899b62a06ab1cc0c7b2ce6a43f3a427b27d1a23653d5596f221905db03f452"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-linux-arm64.tar.gz"
      sha256 "2525eb11aacfc089c280b46d324ae98a89c24d41753bb7a22566be2108340212"
    end
    on_intel do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-linux-x64.tar.gz"
      sha256 "5b68fcadcedfc32ccc3f51c9c2d90d9e761ca4bb63141c6157bae01f8ea35f51"
    end
  end

  def install
    bin.install "flexhr"
  end

  test do
    system "#{bin}/flexhr", "--help"
  end
end
