class Crcl < Formula
  desc "Circles CLI — manage orgs, API keys, and authenticate with circles.ac"
  homepage "https://github.com/circlesac/crcl"
  version ""
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-arm64.tar.gz"
      sha256 "efef4d02d929c86de469a460f6d77fb4b8c78d5c2c7aba5fc3ad73fa245b1b85"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-amd64.tar.gz"
      sha256 "0f96e150bb7ca092ac9c398415926c06c846e56ef43d27a3e8c1b3c774aa774f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-arm64.tar.gz"
      sha256 "44c427d2d74864e5f8d93231a7cf577cb8ae032c0312d254e013492b118277ab"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-amd64.tar.gz"
      sha256 "4f4fabf836cded623ecba3348f10bc9acd47d553b0b4d50c0ea66b24e54f1cd3"
    end
  end

  def install
    bin.install "crcl"
  end

  test do
    system "#{bin}/crcl", "--help"
  end
end
