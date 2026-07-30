class Nosnitch < Formula
  desc "Stop your coding agent from snitching your code to model training"
  homepage "https://github.com/circlesac/nosnitch-cli"
  version "26.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-darwin-arm64.tar.gz"
      sha256 "3b1f103895006657130961ebab80538dbce5f10b7d6c7cffdbe47c77d7ab68b6"
    end
    on_intel do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-darwin-amd64.tar.gz"
      sha256 "c3c97b22b1c45bd8cd5f3ccdc2514a7dfea40371d19c16850116e3456188db6f"
    end
  end

  on_linux do
    depends_on "libsecret"
    on_arm do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-linux-arm64.tar.gz"
      sha256 "f424370604a38404ac0c3e8b4d5af16b68f7278e88771ebaab2e48a8a72e438f"
    end
    on_intel do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-linux-amd64.tar.gz"
      sha256 "8131dacf6ff7db87f4211368f004cdf6c0666b6c1a347868892f087bdfa07996"
    end
  end

  def install
    bin.install "nosnitch"
  end

  test do
    system "#{bin}/nosnitch", "version"
  end
end
