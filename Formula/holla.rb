class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "9233f3c22b349e1a06adb21508a218e0212ac5d18df8e243c0c643bf0df4af61"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "f34464f36e957e274a0148a8d974550bff456112f9a28d42a8f4626e652dccff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "c8b64c2764f4fcc871937e4f483e25928e5d931e9cb793641cb45c07d59351b5"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "66353bdc50266c79d7b0303449057c512d6d80aaf448f0e37b946b46107216bd"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
