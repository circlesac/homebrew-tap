class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "a5fbc04ff674644618337d2fbf4612bf4840dabb07a553bb1c560edaa9a7d83b"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "a45ef2b3f3cac74ca696e3fe919d555309a23b0b1c5b004c8c1cc568cf8aeb08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "5878482ddd3330b4d2db6f71fd7aa5b75a8fe2b6e9e8b160293b54903f0b474e"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "f58be5460b4617a4b89ee9a87e309ec467371b58616d4b94d194beea19518f99"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
