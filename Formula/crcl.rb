class Crcl < Formula
  desc "Circles CLI — manage orgs, API keys, and authenticate with circles.ac"
  homepage "https://github.com/circlesac/crcl-cli"
  version "26.3.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-arm64.tar.gz"
      sha256 "f4b66aa705cd3e2bff469ad020c3199bdd2dd6ac2d1f9cff985ec3ec6caecc2c"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-darwin-amd64.tar.gz"
      sha256 "2650fabfb69c5f56c44e20bc26c9f8d073a9f1c9ff6e3ee7d871399ee60c7e8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-arm64.tar.gz"
      sha256 "c970003659bcd318605b99914eeb59fa88d1e6eb78cdf01d0d7a6f1799a35168"
    end
    on_intel do
      url "https://github.com/circlesac/crcl/releases/download/v#{version}/crcl-linux-amd64.tar.gz"
      sha256 "4d85f7569be643b86fa82a12d9ead9fe62afd3edc44ac51db735a5ccd45def8b"
    end
  end

  def install
    bin.install "crcl"
  end

  test do
    system "#{bin}/crcl", "--help"
  end
end
