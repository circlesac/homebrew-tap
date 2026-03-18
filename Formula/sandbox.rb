class Sandbox < Formula
  desc "Self-hosted E2B-compatible sandbox management CLI"
  homepage "https://github.com/circlesac/sandbox"
  version "26.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-darwin-arm64.tar.gz"
      sha256 "129fa6a7f80219e60bd6a960e95b822f39df882e9656b7136c74508cba468fd9"
    end
    on_intel do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-darwin-amd64.tar.gz"
      sha256 "7f4471647a12fa5d7e8ae1b94531d042533bc5cc4fe052bddaf777fb9ea264e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-linux-arm64.tar.gz"
      sha256 "347e19c267297d71ff2c881c895f12dab08118801685b11d1de2cea3f0fcf297"
    end
    on_intel do
      url "https://github.com/circlesac/sandbox/releases/download/v#{version}/sandbox-linux-amd64.tar.gz"
      sha256 "e7277ac9a1cc9be3a8b698f814b06d8715a193812915edd34cf0db973d4ea758"
    end
  end

  def install
    bin.install "sandbox"
  end

  test do
    system "#{bin}/sandbox", "--help"
  end
end
