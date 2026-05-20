class Gh2 < Formula
  desc "GitHub App lifecycle CLI — create, register, and manage GitHub Apps from the terminal"
  homepage "https://github.com/circlesac/gh2-cli"
  version "26.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-darwin-arm64.tar.gz"
      sha256 "0c8fcf5d961d7a25b090556fd0297eb9f81f7cf16a1c9f8e8a5ad81e5941bb8c"
    end
    on_intel do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-darwin-x64.tar.gz"
      sha256 "d82dee1ff6bc1ec9ae27a59fd06d8b9edf290e03242263f82296417696b7404e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-linux-arm64.tar.gz"
      sha256 "e52911b796b624df1fab4a292c647c2f3b993926d0e868851cdcc5f86d0972cc"
    end
    on_intel do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-linux-x64.tar.gz"
      sha256 "e4baf525c545df1bdc1a2b49dbdd7a17303bcaca70703886595f7468d5db19bc"
    end
  end

  def install
    bin.install "gh2"
  end

  test do
    system "#{bin}/gh2", "--help"
  end
end
