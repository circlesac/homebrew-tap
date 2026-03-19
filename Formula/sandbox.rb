class Sandbox < Formula
  desc "Self-hosted E2B-compatible sandbox management CLI"
  homepage "https://github.com/circlesac/sandbox"
  version "26.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-darwin-arm64.tar.gz"
      sha256 "53020f462e058bd8f5045980d1beddc26e62ad6f28c8bda8771fab00a8c3ff90"
    end
    on_intel do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-darwin-amd64.tar.gz"
      sha256 "50dee7745745d0b0e61ccfd8a23acdcb33a87904601b6766185c5e732b8da9a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-linux-arm64.tar.gz"
      sha256 "ce3d2f26b593dda88cc1ed85155b82b243fd89afd2be3ff2869150b6b37687c4"
    end
    on_intel do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-linux-amd64.tar.gz"
      sha256 "3add6d7289e747b1e610f19853f3c435bc183b9304fbbd896c675a7455160353"
    end
  end

  def install
    bin.install "sandbox"
  end

  test do
    system "#{bin}/sandbox", "--help"
  end
end
