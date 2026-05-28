class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "7cec786f92c9231ad5f106e472f0159ac090d6afca98a6932e6b70e2510124f1"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "9fecf08ff805518e6ff6ec49a60b046bdb66e257eb701ee1eebec3ae3ca33faa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "767c4319edaa7a1b8051bbc78c028a45b03727c7380846f42d0a22e7afcd0bc8"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "6cdcef84e4df03a8f82c07d0a2c61f6b078d0fa1a348dc10615f094b28898c19"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
