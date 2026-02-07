class ShhEnv < Formula
  desc "Load secrets from OS keychain and inject as environment variables"
  homepage "https://github.com/circlesac/shh-env"
  version "26.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-darwin-arm64.tar.gz"
      sha256 "a2cf22007f6d99aea60eaf2b51b0cfe182e1971b44b4ec3df3cf18b3be980709"
    end
    on_intel do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-darwin-x64.tar.gz"
      sha256 "5a5868ff6166b32bc19101679d811ecc8fe68dbb0a5457c68f4313fa178e4120"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-linux-arm64.tar.gz"
      sha256 "bd5d9e37a88b0bc491d053df7b2aa891ca395cfb9cbf509656cc24eb71d48bad"
    end
    on_intel do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-linux-x64.tar.gz"
      sha256 "41adeaebaf79eca804f9cd0041c70c82182267dca3861db483ac7c05ab33de9d"
    end
  end

  def install
    bin.install "shh-env"
  end

  test do
    system "#{bin}/shh-env", "--help"
  end
end
