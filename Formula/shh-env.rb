class ShhEnv < Formula
  desc "Load secrets from OS keychain and inject as environment variables"
  homepage "https://github.com/circlesac/shh-env"
  version "26.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-darwin-arm64.tar.gz"
      sha256 "b7de67cf1bb8624df38c2eec484529d9198d6246ce2ad5bd08e03c91978f4262"
    end
    on_intel do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-darwin-x64.tar.gz"
      sha256 "ccf640994cc88aa4e14aafc43a9bb834cb93f54c5fc9919c9fe6bd67ce88f8db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-linux-arm64.tar.gz"
      sha256 "91deaa1d59292fcbdca7246197326ca9b36ca5165bbbf13234f6d8483d856160"
    end
    on_intel do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-linux-x64.tar.gz"
      sha256 "29ead17889f2f3f75651b0ae917e17ac83b252cbd2bc20763a3e414df0351c78"
    end
  end

  def install
    bin.install "shh-env"
  end

  test do
    system "#{bin}/shh-env", "--help"
  end
end
