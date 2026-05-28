class Clova < Formula
  desc "CLOVA Note CLI — transcripts, summaries, speakers, and audio from the terminal"
  homepage "https://github.com/circlesac/clova-cli"
  version "26.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-darwin-arm64.tar.gz"
      sha256 "09d49be61de6385b7d79185552ecc38f6ffd880c074edd1e5a560f9d5a0cf21a"
    end
    on_intel do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-darwin-x64.tar.gz"
      sha256 "eaa248e9dac7534ed69ef48bfb323a129cdf5fc17e14b4e98d61353db6a6a7e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-linux-arm64.tar.gz"
      sha256 "396f3ed62d672b4671e86db7903176e23d5d2e796bb184790b8f07619a29ca1b"
    end
    on_intel do
      url "https://github.com/circlesac/clova-cli/releases/download/v#{version}/clova-linux-x64.tar.gz"
      sha256 "8d03dca1b51a68036308071a340a16b0a1bfb804328c62f44c552699448a5060"
    end
  end

  def install
    bin.install "clova"
  end

  test do
    system "#{bin}/clova", "--help"
  end
end
