class Prism < Formula
  desc "Manage provider accounts for Prism"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.8.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "8b46b7a9ddc2d93f583480c1a8b9ed7088f3e6979ed6e4b80e87c4b724e14d90"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "e8dac52bd13f7fb21160adc2d041219be510b4b3f17567db6b5e75187fe8a1d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "95fe2c2aef1eff061bc035b986fb4ec098949ad06c262b1cd34f63dc3f8e79ef"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "3b1439740427045616d85f74e898a6d338630c855e03415af50e88a821875b1c"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
