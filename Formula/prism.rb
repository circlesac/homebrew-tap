class Prism < Formula
  desc "Manage provider accounts for Prism"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.8.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "e495a7de88ed7ece512034e500de0ac8e730c5dadab9d69462072163d02495b0"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "ee54dcdae846fb06c1ec1b1e6e99765c3fea52371229ad81c3cde050984e7106"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "961196b667a09ac1138783988292ba0141346e4e1c874a6808554d2c2de6a2a3"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "9d285cb56af0a3655a42e0715d8bfb51406b319dcac27fbc26a59594156c9276"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
