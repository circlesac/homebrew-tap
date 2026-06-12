class Vlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/vlt-cli"
  version "26.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-darwin-arm64.tar.gz"
      sha256 "609e5336dd685e6205c4109bfe949bb9592a8066e7a51cb7b75be75c45d32ab6"
    end
    on_intel do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-darwin-amd64.tar.gz"
      sha256 "0e22115c6bbe62cc7b288acd3fdd6385bbf8c2b90e9666a78611d761fc19d729"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-linux-arm64.tar.gz"
      sha256 "4937b0c13a655a4ff04006305fb803232032b0ecf9ad8088dd66aef97a128b4d"
    end
    on_intel do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-linux-amd64.tar.gz"
      sha256 "d6e60caa18ea0901e05a86fde07e54cb237d4f00751b0ab88d1dd52bb3867167"
    end
  end

  def install
    bin.install "vlt"
  end

  test do
    system "#{bin}/vlt", "--help"
  end
end
