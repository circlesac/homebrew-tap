class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.5.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "08699757fd4e0656b718a8704bcd0f3738acd686197e89e2a6ff33b15214dfbb"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "89778bd5604ed6e59f658909b4b0c9f510ecbc45a390e60f6280ed7ce3a53bf9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "6c3a52589705af4917b6f8db5d1b2bc690134bc37faa932f1bea9b8d74ec0c4a"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "c227cfc8f27dfb4f461ef14ef482d6638aa037043e4f4167989a3fe0eb9b4758"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
