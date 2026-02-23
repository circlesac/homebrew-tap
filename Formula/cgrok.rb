class Cgrok < Formula
  desc "An ngrok-like CLI that uses Cloudflare for secure tunneling"
  homepage "https://github.com/circlesac/cgrok"
  version "26.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-darwin-arm64.tar.gz"
      sha256 "aef0809f70d8d05624a66a135170860723885b26a134f37dd11956d46023a93c"
    end
    on_intel do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-darwin-x64.tar.gz"
      sha256 "50920c7259264684bfdc2bf0abde10305f105aef0a71e885f1a4e7a6a0572e69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-linux-arm64.tar.gz"
      sha256 "5f14379a0359fa1d113f577ce0f5cab70ed6eed7efc4f19a50f225525ddb94df"
    end
    on_intel do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-linux-x64.tar.gz"
      sha256 "a75ed3abf8bb48272575beed62bb211fc0443fe30a518ad518bf1b533435e249"
    end
  end

  def install
    bin.install "cgrok"
  end

  test do
    system "#{bin}/cgrok", "--help"
  end
end
