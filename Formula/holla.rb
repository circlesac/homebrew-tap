class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "8aa58bde303f6448f21d89a2d13132dc0e045c782cbe1192df65b6fc5ff711fd"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "973a4fad7a2cf844e275094af0927f83b33749e9c87aaff407984e8cdf1fc001"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "33d1da10b0b27e46c6fbb48b00bef01c62db3a71a5d7b92d7f09c12d1cfa32cf"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "97de4da367b949640b8efa3eb2dddecd16a4fbab23f082bee7ef4d6bd34355e6"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
