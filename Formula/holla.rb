class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.2.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "b23c55778a0289fd008c82c91fce6753ffadbd8db02b0c487373b267789b6ba5"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "cef477b30c152d97cd2afcf1069d7f49044ec7f9a0423f9083d934d71aef1f6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "29a46d965ee7e03aa2822e5f1422063a95e697dfa542b387a02c7f7cf84ddefd"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "1b6b9d9a0ae91ce62ae24bdb202d8957629b7106ebb2e1f2f5cbc27c47c88c32"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
