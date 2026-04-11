class FlexCli < Formula
  desc "CLI for Flex HR (flex.team)"
  homepage "https://github.com/circlesac/flex-cli"
  version "26.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-darwin-arm64.tar.gz"
      sha256 "20f42f67d2167f4b7cda966e0a83b9a335d6750765677d5e5c52ba4a218569b7"
    end
    on_intel do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-darwin-x64.tar.gz"
      sha256 "842d4a24a22591d61a3c9d83a495a16febd43235ca53d9ff6b4b5313a291d696"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-linux-arm64.tar.gz"
      sha256 "da85ec0afa17f8087ff84ea84d896d582136d1703a6bab1fe616deb89980e4f4"
    end
    on_intel do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-linux-x64.tar.gz"
      sha256 "e684e1098e7cb500238c25e828b3af7255d0bd4c35980b9c1f4071dfcaa5b158"
    end
  end

  def install
    bin.install "flexhr"
  end

  test do
    system "#{bin}/flexhr", "--help"
  end
end
