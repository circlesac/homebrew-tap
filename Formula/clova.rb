class Clova < Formula
  desc "CLOVA Note CLI — transcripts, summaries, speakers, and audio from the terminal"
  homepage "https://github.com/circlesac/clova-cli"
  version "26.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-darwin-arm64.tar.gz"
      sha256 "af1b4bbfaff2917b1f495023b45de6c4a0a321695ae6452ab204eb3bcf632fb7"
    end
    on_intel do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-darwin-x64.tar.gz"
      sha256 "6addef46f9588a8f2e237ecce2ebdd1f7933c7e82d6f8657b40021fa49d3dde7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-linux-arm64.tar.gz"
      sha256 "dd0c41fa41efc11cba6c364102f6f6f3ebf8001fe19e25483d4c070e6638285a"
    end
    on_intel do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-linux-x64.tar.gz"
      sha256 "492dc5d118a76b0a21550e1a7ec077f2b6dc001d737b48f8da58d1a011cbb0ef"
    end
  end

  def install
    bin.install "clova"
  end

  test do
    system "#{bin}/clova", "--help"
  end
end
