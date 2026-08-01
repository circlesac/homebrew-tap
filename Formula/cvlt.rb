class Cvlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/cvlt-cli"
  version "26.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-darwin-arm64.tar.gz"
      sha256 "470ff7d05deed60f8448d49038ef95558e48debe791a992df1eb03a5825835fe"
    end
    on_intel do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-darwin-amd64.tar.gz"
      sha256 "dc854d05f713c420c2f7ae2220ab00d17dcc3f62ff35cef96bf56e8ad5c98fe2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-linux-arm64.tar.gz"
      sha256 "46bbb1f244d04f96b386ad5b693a6827ddb4f82e99a43f6fe484daa2463f8c60"
    end
    on_intel do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-linux-amd64.tar.gz"
      sha256 "d6d8e9f7b63dc1c7bde89bd80493599110f4cac7508b198d7f770756f4be6974"
    end
  end

  def install
    bin.install "cvlt"
  end

  test do
    system bin/"cvlt", "--help"
  end
end
