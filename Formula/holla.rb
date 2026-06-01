class Holla < Formula
  desc "CLI tool that acts as you on messaging platforms"
  homepage "https://github.com/circlesac/holla-cli"
  version "26.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-arm64.tar.gz"
      sha256 "d40049b40cf124b817733ebbfe0d80a874f966b6b366caf1d6f433c267c7a134"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-darwin-x64.tar.gz"
      sha256 "fe1857d42fe41ccb80c4b5fa9e8820e1a328bbce9a253ecfbf6f2e0efc39ec23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-arm64.tar.gz"
      sha256 "ff80a02d2fae31d2dd8c730e309020c20c4f6a767caa4909d423b3e13a1120ce"
    end
    on_intel do
      url "https://github.com/circlesac/holla-cli/releases/download/v#{version}/holla-linux-x64.tar.gz"
      sha256 "7d55c66dab606e6ee793d132ae150b592e0fb4eeb0e93030304bb83c69b33087"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    system "#{bin}/holla", "--help"
  end
end
