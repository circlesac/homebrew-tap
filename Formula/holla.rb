class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.4.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "7a7f478778ffc85b16a5d39f288bf0f1fbc0c3a22b5a513a0d98975ead0e4b76"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "2ccc37d6d9d00bb54ceb414061d300efd48030d706d88fc01d84d561edd705c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "4f418325163d13e9d8b1b4c13c3a428aa208f87f73a0a8adb4f9d3a6a1cf1ead"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "4c45875cbfb893e2a71a5c12cb7ef387f6f5eb2d20c0739c10640ae364290883"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
