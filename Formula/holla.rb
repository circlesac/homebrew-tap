class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.2.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "56bb00291805aaa76b89e8628e160ef754b37beb0c1b59e4c3e1c896f105fb85"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "d8039dcf62cdd684cd1c1fc336d8db0e9664e3d21b0bbd3334475fc2bec2021a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "ae5d1916e4ec9ddb6acdf20a0c67fe44a2be51d510bd74aa1d545c5630d85a30"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "ca0f3897a9d022ddcbcf04704ae0be1468837cf688b490a437c4070667faef1a"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
