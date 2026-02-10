class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "d4167609fa6c862f4e76f0c54dd5e711d86a2241c219e7b4b044bf1ff0795a3e"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "c4bf5efd9429ba1d9e1887f7a22877c808145dcd56fa90208d62d5fb0100c441"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "6eddab88736ab58e21f35d0ae2136b96c0320e5c5b0f83d7f27f26c9bd26eb69"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "0cab95814179fcd5a9882d8f7abcd154fd83fc57c3c6705ee7b4ed2ca729dd25"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
