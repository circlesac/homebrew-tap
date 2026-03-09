class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "4d3c0efd8cd77355eb1885e7500d43961077fa29a86931e57780828a830dbd6b"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "c8649fcd3502fb77efe4255e90ec793b67af1e7a102cbb1c5dd070e534250188"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "8d52b1c29bb977344bc0baf4571cd2c11383830359f4e125b414ad0f0b32e4ab"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "a00f3e6b5dfdc1ff62fb76b1a75d522f20a8d423d2dda28bbf2c200ce6313c34"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
