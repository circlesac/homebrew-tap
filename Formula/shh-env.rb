class ShhEnv < Formula
  desc "Load secrets from OS keychain and inject as environment variables"
  homepage "https://github.com/circlesac/shh-env"
  version "26.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-darwin-arm64.tar.gz"
      sha256 "210a1a614382d83ae89585397080f013e7eaedab0587d0d66ea89e943d593502"
    end
    on_intel do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-darwin-x64.tar.gz"
      sha256 "e9f3eb49027808b0b8085a28a211bc558049ed30515ef166fe696bd810fe7ad5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-linux-arm64.tar.gz"
      sha256 "9dcda62d94719807ec935762c9af1b50fa6c54b6c51674e8ea01a9bf4e2ba941"
    end
    on_intel do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-linux-x64.tar.gz"
      sha256 "e53021526eb5f351bbe1768e3abaffe1d5f7685a23d1fe4649b31ea68dcf682d"
    end
  end

  def install
    bin.install "shh-env"
  end

  test do
    system "#{bin}/shh-env", "--help"
  end
end
