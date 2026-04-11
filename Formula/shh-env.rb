class ShhEnv < Formula
  desc "Load secrets from OS keychain and inject as environment variables"
  homepage "https://github.com/circlesac/shh-env"
  version "26.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-darwin-arm64.tar.gz"
      sha256 "a237277171128f55d8f69c1ccba77be8a47e862f529a6002dac64ebada7e260c"
    end
    on_intel do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-darwin-x64.tar.gz"
      sha256 "de132a4714ba867b68f6244a14e7a757bfc43800986afe53a5c9ea58ecef71cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-linux-arm64.tar.gz"
      sha256 "c85760390b93f8888e541f7b8e2f595959fc21e3aeec3c8a06053e6037a02e1c"
    end
    on_intel do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-linux-x64.tar.gz"
      sha256 "77490c1813440dbfda5986fa00368caf5b733f3e9de8e2495aa187f3bc97baab"
    end
  end

  def install
    bin.install "shh-env"
  end

  test do
    system "#{bin}/shh-env", "--help"
  end
end
