class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "073ba62d9cbd7096697316c491871f5a1c2254bfc8a4c22934763c535e13abf9"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "5b47fdfe2004d27c7c17aef08fa6be6332ea5b2e093fe483c7d6ad92549af403"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "374aa510ac4655131d6ddf39e9c223ff626bcff4f9bab91b9f6c1d1bc8968754"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "9d1b19de41b607a0b7a8ed7da8b417efdeb6ccff23d48221f747b00b90aa26a6"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
