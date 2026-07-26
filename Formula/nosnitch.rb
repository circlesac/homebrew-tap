class Nosnitch < Formula
  desc "Stop your coding agent from snitching your code to model training"
  homepage "https://github.com/circlesac/nosnitch-cli"
  version "26.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-darwin-arm64.tar.gz"
      sha256 "100d52e88db9bc232d6cbe34fbc950d9f7cf610e2ee2f6f78074aec08453a9de"
    end
    on_intel do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-darwin-amd64.tar.gz"
      sha256 "5c5304fdded35cb1c66d645de714741350f8be73bc81413fd312173f6735cd49"
    end
  end

  def install
    bin.install "nosnitch"
  end

  test do
    system "#{bin}/nosnitch", "version"
  end
end
