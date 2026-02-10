class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "fbf85bc81055c978351de26ff308ea12836f64a0c8f70fae04346596d782f63d"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "c0d695c72f16bf18a915d97692ee5a0387b5d384876ba15bb1d13fa7676845b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "0a999a221363366ccc881f060ca96ee31bbff56e67c73f6f28cc213eb2122f2d"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "e9823a2fad8b325d66902adb76a804f1e2c68b3729d73ec1287a253b84dc3e78"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
