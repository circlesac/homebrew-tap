class Prism < Formula
  desc "Manage provider accounts for Prism"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.8.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "26b5bbfae0b2334550a09d9943c9624d37a434f977b7ee1957ba0bddf35d7638"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "3a2e2192c7e5124990a3c6b73e4f1c21f6249774763cd7469e2e8b40e58bfdad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "0857a3288e06e592ae0440eea1dedccf8cc2facfcf27907ca99d04c30484fb6b"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "c9eb4c525dbd242ff304ce0c485ae0e24b6719971dd5f6454fe84192b8bd718f"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
