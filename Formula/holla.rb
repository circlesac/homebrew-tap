class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "a3edc0feaf864d2584ae4d744934d5b238baacd7522f1d5c1dd43a0e22535052"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "e3a1ee1ac325b7a4f9ba9f2cc01ea2b04b7779d4172ba1cb71cfe6f8b9c7923f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "c0748c79189099d33e6181a5be3def750ebe4780e9d978e592d48bea2d1fbc0b"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "388e4b86ee8992bb36d84fcb5d9d83ae3c399ed7c110ccccf6d07b969213f4b9"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
