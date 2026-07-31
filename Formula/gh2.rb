class Gh2 < Formula
  desc "GitHub App lifecycle CLI — create, register, and manage GitHub Apps from the terminal"
  homepage "https://github.com/circlesac/gh2-cli"
  version "26.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-darwin-arm64.tar.gz"
      sha256 "94a76b02c49e79f07b0ce091a91e384744674fe674f296f400c886e1efcc0abc"
    end
    on_intel do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-darwin-x64.tar.gz"
      sha256 "ee89bddf9435f31cbe3529223129baab3f5be21731f1683b3c7c251c67b1e0f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-linux-arm64.tar.gz"
      sha256 "968b2ee0c740e733470f66b24aee3487632e64adb6d3804a08efca3a6e699d3a"
    end
    on_intel do
      url "https://github.com/circlesac/gh2-cli/releases/download/v#{version}/gh2-linux-x64.tar.gz"
      sha256 "7e5c5ac89315991a50b772859874223eba9e2d93111d7fc1c2074aeb11e6e08b"
    end
  end

  def install
    bin.install "gh2"
  end

  test do
    system "#{bin}/gh2", "--help"
  end
end
