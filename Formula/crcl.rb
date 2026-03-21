class Crcl < Formula
  desc "Circles CLI — manage orgs, API keys, and authenticate with circles.ac"
  homepage "https://github.com/circlesac/crcl-cli"
  version "26.3.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-arm64.tar.gz"
      sha256 "70bd2a3f96a2034107714be1aef1bfc097edcb1b109afdb91f73a46d20f70f14"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-amd64.tar.gz"
      sha256 "9a2ed6ba4ac8569901fc57bb75a64b9ae08ba1d574b38aeec866b0793b133807"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-arm64.tar.gz"
      sha256 "f72de258ce87e88b947ed30e541b1e81a575b089f7ce613b0ef877556d384a4d"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-amd64.tar.gz"
      sha256 "1c5d63f1f40102862517b15fff1ec2a1c31e158901ddbc098a4965197ce1bab4"
    end
  end

  def install
    bin.install "crcl"
  end

  test do
    system "#{bin}/crcl", "--help"
  end
end
