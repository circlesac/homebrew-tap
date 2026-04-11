class Tsk < Formula
  desc "Circles Tasks — unified task management CLI"
  homepage "https://github.com/circlesac/tsk-cli"
  version "26.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-darwin-arm64.tar.gz"
      sha256 "a8fa8ad6ddb77c57b02e2e950ed565b7b8444729733260c8d9d84721a2c278b8"
    end
    on_intel do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-darwin-x64.tar.gz"
      sha256 "4a28586ed54d859c4725d9d088aa406ba7d9bf849cbb4058c574373057397d15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-linux-arm64.tar.gz"
      sha256 "b58c2b4ad26bf45ba86e3525474eecf5cf9053f5a1924ad0e74339f734bf87dc"
    end
    on_intel do
      url "https://github.com/circlesac/tsk-cli/releases/download/v#{version}/tsk-linux-x64.tar.gz"
      sha256 "60ae9ace82dfff133fb97d7e18505102c94ab2264b11dffd1f61283ea808c40d"
    end
  end

  def install
    bin.install "tsk"
  end

  test do
    system "#{bin}/tsk", "--help"
  end
end
