class Cvlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/cvlt-cli"
  version "26.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-darwin-arm64.tar.gz"
      sha256 "93cd3aed5f471ae65db383ef8d28cb452fe28538997b4980150dd0846ebba89e"
    end
    on_intel do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-darwin-amd64.tar.gz"
      sha256 "969a92f25eb90ffc11bb2bfefaa90bb0bcc73718dfbb177b329b50cdafc5fca7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-linux-arm64.tar.gz"
      sha256 "bf3c90ab2f0cdf8894361863166c5df4aa72682b0840ee41c9e7e50357076d8b"
    end
    on_intel do
      url "https://github.com/circlesac/cvlt-cli/releases/download/v#{version}/cvlt-linux-amd64.tar.gz"
      sha256 "a70470c98621f01843fdc0e4939e9ecb4d77ef28cd6fe2bed1d9faa52e56987d"
    end
  end

  def install
    bin.install "cvlt"
  end

  test do
    system bin/"cvlt", "--help"
  end
end
