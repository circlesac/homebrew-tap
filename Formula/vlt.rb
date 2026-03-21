class Vlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/vlt-cli"
  version "26.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-darwin-arm64.tar.gz"
      sha256 "6ba3a10cfa8dbbbb87b656ba95b9f26628acd5ea192c0a420335bb5a8d263df6"
    end
    on_intel do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-darwin-amd64.tar.gz"
      sha256 "0c3db0f6dd7a8895af87b60425a2cf118487afade980944a42f8d52c08617a3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-linux-arm64.tar.gz"
      sha256 "453434605d34f2e2c5d961e93df84e5ee6aa3448414827bb80b886abc3eb8ace"
    end
    on_intel do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-linux-amd64.tar.gz"
      sha256 "3103f65120c53c49770e790d53fb2b7ea42e2c75560605ceb48746ab46648a52"
    end
  end

  def install
    bin.install "vlt"
  end

  test do
    system "#{bin}/vlt", "--help"
  end
end
