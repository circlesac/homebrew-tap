class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.2.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "60230a2f601e6db3f571546d01f5ca580cea89b442eb6ea77bcc82c06ecc5bb3"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "35e54f9485526dbcd95fd63d98b012f3fde0c6f6ad37c9157b04fee386df82f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "6c69ca7914c4be0af0bd9f2fa617e9e4826e114b3a456d4f3f740cdcdae78c2f"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "3f2b82b6f2f6f26c58bb66ea38bcdef359b7400e5c3496456126edf4d299035c"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
