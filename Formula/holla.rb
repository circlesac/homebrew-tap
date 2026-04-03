class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "d4ed30a700c25f849fc93e91520e3d8428759276d65647dcf064dd743172547d"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "0f8c75b5704cb2606ca645e47df8c4a0c3d28ae70e0e9005e15bf53ba8d29dc4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "7e0f7c829d71080e5e159aad00ac0d8453b861d4a7efaec04d1ea51db0d4bd84"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "cc81b7e86b84cf93c5e829dc56f6ebf1aa96d3d4d429085d5af642868505a803"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
