class Cvlt < Formula
  desc "1Password-compatible secrets CLI for Circles Vault"
  homepage "https://github.com/circlesac/cvlt"
  version "26.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/cvlt/releases/download/v#{version}/cvlt-darwin-arm64.tar.gz"
      sha256 "65124c8312b8688e42bf41977c0fb00b9a48cb58b7b1f62ec03bf2ff3248cc26"
    end
    on_intel do
      url "https://github.com/circlesac/cvlt/releases/download/v#{version}/cvlt-darwin-amd64.tar.gz"
      sha256 "d49a1a51fa10e49a2ef35e1cd29dd1e7c5b0aabb86a02d77ac70377b7961c487"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/cvlt/releases/download/v#{version}/cvlt-linux-arm64.tar.gz"
      sha256 "4d87866b3e49df4e1e962fab491fcd4a8bf5ab7ec86c44136f21098d428a50d7"
    end
    on_intel do
      url "https://github.com/circlesac/cvlt/releases/download/v#{version}/cvlt-linux-amd64.tar.gz"
      sha256 "02904075ec47003411e9c3c0eacd21d2936bc6d8989cd581175e4922ba4fe7d4"
    end
  end

  def install
    bin.install "cvlt"
  end

  test do
    system "#{bin}/cvlt", "--help"
  end
end
