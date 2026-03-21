class Vlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/vlt-cli"
  version "26.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-darwin-arm64.tar.gz"
      sha256 "3ab2f5e1aef6d03eee4e5cfcb3064404b40462d499b6dd24d1d4289723c8e718"
    end
    on_intel do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-darwin-amd64.tar.gz"
      sha256 "21800b3631c4275ee22d611e26b1899df3e903ce92d8c613973f2af2e79beb86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-linux-arm64.tar.gz"
      sha256 "c07f962a4fea25a5e15c7b728ed38adbef0c85635a771f8340f0cf2b028291bb"
    end
    on_intel do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-linux-amd64.tar.gz"
      sha256 "4e7c55b71bc804ad155b36d0a2dd333a6a2883ad2fe5e374488d28743eedccd5"
    end
  end

  def install
    bin.install "vlt"
  end

  test do
    system "#{bin}/vlt", "--help"
  end
end
