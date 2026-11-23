class Clova < Formula
  desc "CLOVA Note CLI — transcripts, summaries, speakers, and audio from the terminal"
  homepage "https://github.com/circlesac/clova-cli"
  version "26.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-darwin-arm64.tar.gz"
      sha256 "c5ca71627e19740459e4c0a53965bfc49468406df4cc873544aee4245fc2afee"
    end
    on_intel do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-darwin-x64.tar.gz"
      sha256 "f5d709185c29ef292e147df87f948a0fb0cd7c02c2d7e96ae940a5fa7ec8bdc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-linux-arm64.tar.gz"
      sha256 "986cfd6cbbea3d31376368bde7ba284fd40803e32d792bc05b9676c6de775a67"
    end
    on_intel do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-linux-x64.tar.gz"
      sha256 "27e901dcb68f02d20ea093c698e3aa8522ef6d18b0dc7bca775a83a4d6caa174"
    end
  end

  def install
    bin.install "clova"
  end

  test do
    system "#{bin}/clova", "--help"
  end
end
