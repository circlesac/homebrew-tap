class Tsk < Formula
  desc "Circles Tasks — unified task management CLI"
  homepage "https://github.com/circlesac/tsk-cli"
  version "26.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-darwin-arm64.tar.gz"
      sha256 "1af21bd7e81dcfdc7cb6b58b83d34349bb7061714b7551c9c0091484f347a046"
    end
    on_intel do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-darwin-x64.tar.gz"
      sha256 "5c7698c6021335e1814116189716bfa41b1dd2334fe56f89294cb5fecdc461fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-linux-arm64.tar.gz"
      sha256 "97094cf1d6bed37bd41b76791d392e86411661c049df99b48c371416f9adf183"
    end
    on_intel do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-linux-x64.tar.gz"
      sha256 "8e9940e2fc5bce8680de7ae35f0b1a2829e3971b35c407c0a00f8f65a7a26f5f"
    end
  end

  def install
    bin.install "tsk"
  end

  test do
    system "#{bin}/tsk", "--help"
  end
end
