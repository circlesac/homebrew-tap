class Notas < Formula
  desc "Multi-provider notes & docs CLI"
  homepage "https://github.com/circlesac/notas-cli"
  version "26.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-darwin-arm64.tar.gz"
      sha256 "7b824821fce62c3eb30c19e4df2ee0eb9c147d896fe6f65ce6dd6311afece98f"
    end
    on_intel do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-darwin-x64.tar.gz"
      sha256 "09371c36dbb0eee1a4cead78df6932ec75d5e1559251aabf9e604b309919ea4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-linux-arm64.tar.gz"
      sha256 "1de094876bd69203f70a76b1ff540e34060ccf65ac62ad47e58c2f020b51402e"
    end
    on_intel do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-linux-x64.tar.gz"
      sha256 "b8c4dbbaab1c5cb93f755b90585dc82313501e1fb20e70a1e468b774b298004a"
    end
  end

  def install
    bin.install "notas"
  end

  test do
    system "#{bin}/notas", "--help"
  end
end
