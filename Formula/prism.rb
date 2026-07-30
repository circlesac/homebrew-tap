class Prism < Formula
  desc "Register provider credentials for Prism in Circles Vault"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "1c00e22c2ae25bcfa92130389ce27cd525d2fbc9a45982bb391accf264457cec"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "18e4896a48118ef83ba4ab2bf8654d5ad5b70a63e53ccc80aa526283cf383f6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "7ee5975ab5d6337342e38e5dbd7c2129f418714801e9be43373766dd8debbaf8"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "a7add26b1b66470d4ea90856ff3a1a01c9ebc95974eb8c9954ec79b31b0e5750"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
