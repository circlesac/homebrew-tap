class Slack2 < Formula
  desc "Slack app lifecycle CLI — create, install, and manage Slack apps from the terminal"
  homepage "https://github.com/circlesac/slack2-cli"
  version "26.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-darwin-arm64.tar.gz"
      sha256 "45e10239cec3d243d7a23b4f7a8874adcb9cc760d9edf8f38130ec6c205cc216"
    end
    on_intel do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-darwin-x64.tar.gz"
      sha256 "a268845827c65d5087245af19d88a5438e833c45e82428380e352b1b3e51f7b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-linux-arm64.tar.gz"
      sha256 "1b11fb5e35a4ba7daf445603ea51ad9149f890fc510641e4c30d9bdd3ad63cfa"
    end
    on_intel do
      url "https://github.com/circlesac/slack2-cli/releases/download/v#{version}/slack2-linux-x64.tar.gz"
      sha256 "820b56035bcecf4ee362f8c40591c6a54608e75235e642c9a97c92b60cad8b74"
    end
  end

  def install
    bin.install "slack2"
  end

  test do
    system "#{bin}/slack2", "--help"
  end
end
