class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "3c9473d0fe040bece8b5d633b6e3a78ddd84a64b7db335d9f638dd91895c39c9"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "85e5f702d4b393c72adf331d34a928d2ce6529e2d0efb8a34195eba3d76b5361"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "a11c20ac28153e46897f4463cff65da284608d8064da45ad6bc42506d09495fd"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "e298b21d0e7e35eabf4c947c63ab2a8d6686cb29c685d107ef6ee5f0ae2a5dd3"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
