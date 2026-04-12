class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "b293ea9aa5b9fbff7cf00b440880d1927a509b74a02721c0f8d59acc952a793c"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "ba5d922e1a66c2797e67f5e08d31a528973232f41f54b38cc019d4fb1204e523"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "e9bed7aa10aa6b7dcdf4d33f729ba52729bae6f533f496d1846f3f5b334152a3"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "77cbe0e49c47737ef2f78f96b6a319d75db1d81aaf69d97f19a25db06b45f940"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
