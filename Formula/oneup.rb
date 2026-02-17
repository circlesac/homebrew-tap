class Oneup < Formula
  desc "CalVer-based version management for npm packages"
  homepage "https://github.com/circlesac/oneup"
  version "26.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-aarch64-apple-darwin.tar.gz"
      sha256 "3b4768d56ff79cf057a7821f20627280e9d98219919d32e14e5558e7a1daad3a"
    end
    on_intel do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-x86_64-apple-darwin.tar.gz"
      sha256 "4847d4472a0186e9306aba86a601ea150959cc7d858687320e3b1db9dee07875"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ff5aa4e5adaf9377ab954bf86d1896e0dc0f14acccb6bf0cd221a5edd46a1639"
    end
    on_intel do
      url "https://github.com/circlesac/oneup/releases/download/v#{version}/oneup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e337c80a3f399280d489f1778bc27444f2cc57c54661f08925a1d717b41ca0c4"
    end
  end

  def install
    bin.install "oneup"
  end

  test do
    system "#{bin}/oneup", "--help"
  end
end
