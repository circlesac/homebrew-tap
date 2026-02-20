class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.2.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "1b35d5255bbedfcea0ee3ed7c59cb0bbbfd025f7fba6093e3864f747d7f9b2be"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "4f789a0d4746a5e611123b6b4bdab943fee6bdb911bee420b3648d1d1b395c57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "aaf3929edfa89f760508a0b8d36b379290b08e7b4f863e90aadd7de720ed7c6a"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "32cfd1d3d1d12bf8c089328c980138427ca4b7179bddfec512ac12ec5b0c5d06"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
