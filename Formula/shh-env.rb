class ShhEnv < Formula
  desc "Load secrets from OS keychain and inject as environment variables"
  homepage "https://github.com/circlesac/shh-env"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-darwin-arm64.tar.gz"
      sha256 "c29814f70ff8f9f4a8cac116c4a5449a2b751b4791bc022ade6e09cb59ba5471"
    end
    on_intel do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-darwin-x64.tar.gz"
      sha256 "1657e1610fdf0a8dc335704cffa7e6bd3fedd96a9bc040e6ea6a2e99cde899b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-linux-arm64.tar.gz"
      sha256 "1afd7dd63499d9c4f2beafc547ffc601ab5f178df28f48944a4657ca0a69933f"
    end
    on_intel do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-linux-x64.tar.gz"
      sha256 "e9f64f42c2c0c152374ba801743d726fb6d61e56d31baac9a584b02ae1066d94"
    end
  end

  def install
    bin.install "shh-env"
  end

  test do
    system "#{bin}/shh-env", "--help"
  end
end
