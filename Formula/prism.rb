class Prism < Formula
  desc "Manage provider accounts for Prism"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "7f9b5a9d1bc73cfe9259bcbea4de58201bc75f99e3601ee1d195767bb41f7992"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "dedbba20fb468b353f22c6b8126c0bb2a4c80326a813cbe5cdb06e23cc6a189f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "48a9f19b94b2cd23b1dcb784317d553b8b2c9ffe62f5f3a998167db88170ee9a"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "f3dc5c200401fa7ac77b34cef575723605285dd079a78dd05188d05656d9c2ed"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
