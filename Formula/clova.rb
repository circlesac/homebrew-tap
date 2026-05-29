class Clova < Formula
  desc "CLOVA Note CLI — transcripts, summaries, speakers, and audio from the terminal"
  homepage "https://github.com/circlesac/clova-cli"
  version "26.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-darwin-arm64.tar.gz"
      sha256 "17cc929955f59c3e162f3f7e7318d8b7b1696ce3fc9f1da3d7a973b175ef56f6"
    end
    on_intel do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-darwin-x64.tar.gz"
      sha256 "0cd72d6e4bdba790b0c8e7c4df8c6cacebfdaf4ade422795368a8a0dcb70d9ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-linux-arm64.tar.gz"
      sha256 "f5c6fd0bdbd0643b05c8d9dceaa6ff1d3b092a7bae3f3305f57ccde53fc16d72"
    end
    on_intel do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-linux-x64.tar.gz"
      sha256 "06525f97f55af40f9952f55c8446f75f5a7fe24c4476deaaaaca3d19b7acc2bb"
    end
  end

  def install
    bin.install "clova"
  end

  test do
    system "#{bin}/clova", "--help"
  end
end
