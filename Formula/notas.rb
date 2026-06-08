class Notas < Formula
  desc "Multi-provider notes & docs CLI"
  homepage "https://github.com/circlesac/notas-cli"
  version "26.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-darwin-arm64.tar.gz"
      sha256 "ea82e71e0cb0278814ef0ac5d9fc7e4fcf04816a5eb33140141a3888c1752e7a"
    end
    on_intel do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-darwin-x64.tar.gz"
      sha256 "a43979c27e38b43f66614e938b7249b8bb5c66dcdb0323319c0ab0a007ee394e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-linux-arm64.tar.gz"
      sha256 "cb23c715716657466f0ad163357b5316538f17d303b0a86572f3dd2286fb57d6"
    end
    on_intel do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-linux-x64.tar.gz"
      sha256 "98343fcf3ec2d50440b6d716dd06fee168b96fbb393f2778ca5c85a4c5d79bd1"
    end
  end

  def install
    bin.install "notas"
  end

  test do
    system "#{bin}/notas", "--help"
  end
end
