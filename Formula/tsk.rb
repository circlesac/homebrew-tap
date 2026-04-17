class Tsk < Formula
  desc "Circles Tasks — unified task management CLI"
  homepage "https://github.com/circlesac/tsk-cli"
  version "26.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-darwin-arm64.tar.gz"
      sha256 "8ad07624250becaaeaafd45f2c71ea669c08b4bbca7c58b09dd98126b2ea10fc"
    end
    on_intel do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-darwin-x64.tar.gz"
      sha256 "31f21bb473ba783095c2982b21e81ec13cc52856ac9e50221b25270a7622551d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-linux-arm64.tar.gz"
      sha256 "5c4be138165f6c23e911cde8b0c912c5331aeef4240a12d1b137a81369c6ebf6"
    end
    on_intel do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-linux-x64.tar.gz"
      sha256 "87abacc623d6420b42744f805ee6a6addcde398961dc49a2dbb4651b20af8eb2"
    end
  end

  def install
    bin.install "tsk"
  end

  test do
    system "#{bin}/tsk", "--help"
  end
end
