class Prism < Formula
  desc "Register provider credentials for Prism in Circles Vault"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.8.2"
  license "MIT"

  depends_on "cvlt"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "b1473417989a371665e09e8f9726e2e2654fbdd62b0f9f2aec982d3ccc18cdd9"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "f09acc00b0d6f6178ed9c5b78bbe24ac661a92bb05342dde440d4e6bdbae2838"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "03b4cb90adec970dffee14d69c482df27705a0fbdc949fd408fd5d322a83c284"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "12e07e10a0674f9b9ff0a057cb545289d9dcdaa116de85ea7210ecc4eae0ddd5"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
