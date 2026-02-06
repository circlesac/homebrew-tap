class ShhEnv < Formula
  desc "Load secrets from OS keychain and inject as environment variables"
  homepage "https://github.com/circlesac/shh-env"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-darwin-arm64.tar.gz"
      sha256 "fa8d146b3342d5828c4efb62df4ae74d76effaa6b0e4169fb5e9a3fdc57e3ee4"
    end
    on_intel do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-darwin-x64.tar.gz"
      sha256 "480e211af316fdfafb6618250ab013eeedd2be54c6e2183c2e70865112f7a0bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-linux-arm64.tar.gz"
      sha256 "0234001947852f47a18d4daa3532d0fe77f1d2fa0ee88f13aa0d90e9fc808e85"
    end
    on_intel do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-linux-x64.tar.gz"
      sha256 "7ae1012c635828be6b28f72bb1241570b520239278608c44757115b5de16952d"
    end
  end

  def install
    bin.install "shh-env"
  end

  test do
    system "#{bin}/shh-env", "--help"
  end
end
