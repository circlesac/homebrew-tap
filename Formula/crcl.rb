class Crcl < Formula
  desc "Circles CLI — manage orgs, API keys, and authenticate with circles.ac"
  homepage "https://github.com/circlesac/crcl-cli"
  version "26.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-arm64.tar.gz"
      sha256 "d15b882f48aae456ce5515bfe124b21231728adcac9c0bebcf2c3bd2438fd83f"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-amd64.tar.gz"
      sha256 "c517abc00f84c9f05d77015bb7ceb4f5bab26bd947fdc2928bbc10f90aecca8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-arm64.tar.gz"
      sha256 "2f9ddf709b93a35b3947816959667201796e55295c258e0be66097c6ba588bab"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-amd64.tar.gz"
      sha256 "7e7928eb52377da073a28deb78ca10adf3678e675482d3b36a88c407ef769235"
    end
  end

  def install
    bin.install "crcl"
  end

  test do
    system "#{bin}/crcl", "--help"
  end
end
