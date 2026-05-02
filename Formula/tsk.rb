class Tsk < Formula
  desc "Circles Tasks — unified task management CLI"
  homepage "https://github.com/circlesac/tsk-cli"
  version "26.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-darwin-arm64.tar.gz"
      sha256 "d60318e0d2c5191d479652581b2da60d06884551b5ae898e5bd1e1ceae36c5e9"
    end
    on_intel do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-darwin-x64.tar.gz"
      sha256 "666a77fdb08b622a7d459ad68559fc01d314b42ba966969409e9ac312e852c42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-linux-arm64.tar.gz"
      sha256 "4b165b121caa6fcfaac72c539def173ea5b972d8886fa4f3241332891600f211"
    end
    on_intel do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-linux-x64.tar.gz"
      sha256 "b3226592f854a1950839efe562a50579819fc173bb0a524e99caaa5264b7c707"
    end
  end

  def install
    bin.install "tsk"
  end

  test do
    system "#{bin}/tsk", "--help"
  end
end
