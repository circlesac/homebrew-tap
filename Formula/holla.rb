class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.2.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "ddcb64db5abd068a3e0ca973bd19dcd47279e989d156dc2abe3a5b07a7939dea"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "6c16d242a37b7717f8889763ceb1cfdffb6c1f8894c4f82554b202234ab2c64d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "da7fe56ad426320d0bcb06fc52669bf97189c7f1ca6716b899074ef9bfff02e8"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "fd6c5c07c40bd143cbee28834687ba35d37207d5fd5394d5c77a7525b454bd56"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
