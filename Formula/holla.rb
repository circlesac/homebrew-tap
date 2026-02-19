class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.2.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "a2e17a3bfeba5779c8ec040c69e97d40229bd2881491ef51b0fc76ec86813f79"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "a0d41b7423d53da2b941345fa5f0a4ac61803a20c0e182e31cb7f7e6f91af70f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "4cd3d105f4db2f5e7eb4f31e675a311d9c273c7af4b1c573c9949cd13eea22b1"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "d4604815d0bdf1769a7577b098e68604b9836cce86587b14cd36dea41f88b039"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
