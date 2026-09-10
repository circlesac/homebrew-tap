class Nosnitch < Formula
  desc "Stop your coding agent from snitching your code to model training"
  homepage "https://github.com/circlesac/nosnitch-cli"
  version "26.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-darwin-arm64.tar.gz"
      sha256 "f4b67007705c0111dccc4d80a09859a79994457ea9b3c360dd0d1e48a3494ebd"
    end
    on_intel do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-darwin-amd64.tar.gz"
      sha256 "311f9393a2c5f87511a6afcef9ca2c1154b7e40e49a475c021fd9997b3690626"
    end
  end

  on_linux do
    depends_on "libsecret"
    on_arm do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-linux-arm64.tar.gz"
      sha256 "1f15f766c50039c24e7d3ef2c88737c1187610941561d475dacee36f3ef8f1bf"
    end
    on_intel do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-linux-amd64.tar.gz"
      sha256 "6ffcc576783d8a2a0ee62e87113b2e37bfa3bf7d7d242d21ee4791f0cbed5581"
    end
  end

  def install
    bin.install "nosnitch"
  end

  test do
    system "#{bin}/nosnitch", "version"
  end
end
