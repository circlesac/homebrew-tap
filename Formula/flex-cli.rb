class FlexCli < Formula
  desc "CLI for Flex HR (flex.team)"
  homepage "https://github.com/circlesac/flex-cli"
  version "26.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-darwin-arm64.tar.gz"
      sha256 "670d056653820bb858191982ceae808166cee2f0c49eed1af16ea84c8f00a70a"
    end
    on_intel do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-darwin-x64.tar.gz"
      sha256 "a4cf58e81f0b91c605f63eb2316c8ccec8023ea11ce43efed81afdb5f4d85a52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-linux-arm64.tar.gz"
      sha256 "dec76d91e1c62c26b0bf58645900b4c6edf248f5e11c75feb1a784702f70936a"
    end
    on_intel do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flexhr-linux-x64.tar.gz"
      sha256 "c9e7fa97e61aae68aa3aa33937e6de6ee1c4db27af4d39fff383e769f0013c15"
    end
  end

  def install
    bin.install "flexhr"
  end

  test do
    system "#{bin}/flexhr", "--help"
  end
end
