class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "dc31b5c574950157c4b408f51fd32b79854862432c748a05b0a032cc3dccb27a"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "ecf1361c05429d18ff26fc8b4709b620610e3d0bfdda828c1258845ccfce5858"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "ee97dd7b1d07cd2283747901e1f9568d07bdc08a748b1488eebff63eaf025688"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "384cdee1b1eaf4a0c8649c5967c4941d658dcabd7b9fbdfc406e5ccdfc6421fd"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
