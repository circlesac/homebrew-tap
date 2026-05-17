class Vlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/vlt-cli"
  version "26.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-darwin-arm64.tar.gz"
      sha256 "9f5a4b49a5897bb1d0970eba58874872df6d79c62448666d6fc5f82d8720ecbd"
    end
    on_intel do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-darwin-amd64.tar.gz"
      sha256 "8657a200fd24635a332e57eb66ec1975728d15ce4ed1b2c28782f2202c783e94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-linux-arm64.tar.gz"
      sha256 "535e3781af9cbcec5907ff9b8d113b514b141cb2d3d8b8ab74a77c2d5437e084"
    end
    on_intel do
      url "https://github.com/circlesac/vlt-cli/releases/download/v#{version}/vlt-linux-amd64.tar.gz"
      sha256 "d281ae83fd8ad70f952bff11784868a93e484efe569a081e375ae012164724a7"
    end
  end

  def install
    bin.install "vlt"
  end

  test do
    system "#{bin}/vlt", "--help"
  end
end
