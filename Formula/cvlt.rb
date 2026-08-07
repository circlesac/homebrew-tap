class Cvlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/vault"
  version "26.8.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-darwin-arm64.tar.gz"
      sha256 "d687f7e0dc789608bd33124170cd72020fc89a984046da7e23a66a7e61acbdb5"
    end
    on_intel do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-darwin-amd64.tar.gz"
      sha256 "27e4adba990b215ea2f759105943f70866f51b12b42be84709f899a1675e83af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-linux-arm64.tar.gz"
      sha256 "6c00cdfd9ae6595a82e838c7e704ddbf504b2791e52e813253a3454c32446cd0"
    end
    on_intel do
      url "https://github.com/circlesac/vault/releases/download/v#{version}/cvlt-linux-amd64.tar.gz"
      sha256 "75bf10e8a8998bd5014b8a596b6afe358f2423f0010fa2d76287115ab524bc83"
    end
  end

  def install
    bin.install "cvlt"
  end

  test do
    system bin/"cvlt", "--help"
  end
end
