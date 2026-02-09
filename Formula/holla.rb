class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "ccf161aa8b030d93d1e1510ed4295f8d9bf9c118430e4cf6b82a790523ee0a62"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "2b08048b3b03bce5d26fa4761d00ae316fc36b5284cf9b5fbc0c38ebfb5f30e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "d3dfd4a1154519d3a692d6fb65f7e1e6e8b32eb4e09a5a474c949f2d24201f23"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "807abb7d99b98b424c90a6cecc4f7ae9644ca600574c9f3b2a440a2c25b57e5f"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
