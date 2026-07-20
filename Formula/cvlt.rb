class Cvlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/cvlt"
  version "26.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/cvlt/releases/download/v#{version}/cvlt-darwin-arm64.tar.gz"
      sha256 "4c4e35c9b04edbf66525f3b9977e1fefa572bba6b4f2a7dd7c52ff07afaa77f8"
    end
    on_intel do
      url "https://github.com/circlesac/cvlt/releases/download/v#{version}/cvlt-darwin-amd64.tar.gz"
      sha256 "e5cd26e84c8efde523b8f80943748d194528c66ccac95dda749fc191321bca13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/cvlt/releases/download/v#{version}/cvlt-linux-arm64.tar.gz"
      sha256 "ee114292df669d940e3cd408fb009714d2ce7893637c5f5ead814e50bbb8bdf0"
    end
    on_intel do
      url "https://github.com/circlesac/cvlt/releases/download/v#{version}/cvlt-linux-amd64.tar.gz"
      sha256 "de11566b51249ab185202fa19f9070805eaa3b932f23bddd7b93480b05703335"
    end
  end

  def install
    bin.install "cvlt"
  end

  test do
    system "#{bin}/cvlt", "--help"
  end
end
