class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.3.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "df5275c1ef3dc599914d3f9b4a32a394f95c8cf1194fcb52c0e8be3d79c3e425"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "e4eaa68df16878ae5fc7785829fed8e3bf436c81d60bf85e68bcb55ab10d5527"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "e9fa9473b6a9279dd8107dffd9f46190921f1268168d3ad89c42440dbe5585d4"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "e25e696ae0b63352416f82c61c63d3b222b97cf7c656b9933724b56a26581007"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
