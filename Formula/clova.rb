class Clova < Formula
  desc "CLOVA Note CLI — transcripts, summaries, speakers, and audio from the terminal"
  homepage "https://github.com/circlesac/clova-cli"
  version "26.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-darwin-arm64.tar.gz"
      sha256 "082a3d527f6987be3eddfdc86a141e7b58b0d77de1160b3e8881454c6f50b62e"
    end
    on_intel do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-darwin-x64.tar.gz"
      sha256 "690a25d9f31443bd1d4713c1cd7e8c6679018ba3d7f1deb1e01d310368b84a3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-linux-arm64.tar.gz"
      sha256 "76b89607dcd997bde08078c1002f2613eee18fb0ba3dabbe8a6ee42ac7d97a0e"
    end
    on_intel do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-linux-x64.tar.gz"
      sha256 "373a69ade267e850540e9f139b13f30f12879ab46fa0e6969217e19ef4b3f5fc"
    end
  end

  def install
    bin.install "clova"
  end

  test do
    system "#{bin}/clova", "--help"
  end
end
