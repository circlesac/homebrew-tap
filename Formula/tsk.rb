class Tsk < Formula
  desc "Circles Tasks — unified task management CLI"
  homepage "https://github.com/circlesac/tsk-cli"
  version "26.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-darwin-arm64.tar.gz"
      sha256 "d834fc8fe85c9c97d4e930d067de0fa2777b88c7415786a1d9c38a75be7f9b91"
    end
    on_intel do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-darwin-x64.tar.gz"
      sha256 "622226eee5bd1c51e4b1cb271887058c461dda33d1fa4e4133540ec34ea95362"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-linux-arm64.tar.gz"
      sha256 "96b68fd89a475e0ef74b2e93917403811556f6d41f8b31b984432262fc2f6a5d"
    end
    on_intel do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-linux-x64.tar.gz"
      sha256 "562fb1324fdbff87780dbe8db28468e93cb7c0c459c86122004688d8a4f337ba"
    end
  end

  def install
    bin.install "tsk"
  end

  test do
    system "#{bin}/tsk", "--help"
  end
end
