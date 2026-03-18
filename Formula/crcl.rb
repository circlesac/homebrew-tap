class Crcl < Formula
  desc "Circles CLI — manage orgs, API keys, and authenticate with circles.ac"
  homepage "https://github.com/circlesac/crcl"
  version "26.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-arm64.tar.gz"
      sha256 "91e0572c9ff734b51be51a7160f8403f364380104f1fa2e4a6f4604bf130ab8c"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-amd64.tar.gz"
      sha256 "dc8b9ac19c294753f4da7a48b7619b832d17023e51065f9952115f1cc0c28283"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-arm64.tar.gz"
      sha256 "7f3f18b74fbeed73d7cb18c6d5b7352e6bd58383cf00084da43461f4fcdca9db"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-amd64.tar.gz"
      sha256 "e97a41ea6e43150425fb565c1f8e71692ab0dea5f8780243eec2fc802d092126"
    end
  end

  def install
    bin.install "crcl"
  end

  test do
    system "#{bin}/crcl", "--help"
  end
end
