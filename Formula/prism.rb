class Prism < Formula
  desc "Register provider credentials for Prism in Circles Vault"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.8.0"
  license "MIT"

  depends_on "cvlt"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "0020f09bea06efdb31bfcd39de5ea356c21a4930f6fd037af87a9f85c6b03d41"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "019c3c2d4e128c8509146ab8b20a73f47f7bea16860a3780227318b0981333b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "1c13b2a8ca8650a63698799ec768c8da6801561d8cec1d3e715ab73b786722c1"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "d201e324ce93c8bc60be29ed06c8bcfc9f3db0c87008e32ce55ab455faa98ee2"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
