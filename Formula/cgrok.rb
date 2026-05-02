class Cgrok < Formula
  desc "An ngrok-like CLI that uses Cloudflare for secure tunneling"
  homepage "https://github.com/circlesac/cgrok"
  version "26.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-darwin-arm64.tar.gz"
      sha256 "399c032147df682481d25db815933f145708caf4a3da653333dbb622807dc147"
    end
    on_intel do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-darwin-x64.tar.gz"
      sha256 "044e4c928314b19509b8bfd37ea95f7018c9e735389267b1bffd683e35b2f6c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-linux-arm64.tar.gz"
      sha256 "fb9b5ecb29db792ff36b0e8a3606822f7d2c8c4f426ab26457f9a2da37056502"
    end
    on_intel do
      url "https://github.com/circlesac/cgrok/releases/download/v#{version}/cgrok-linux-x64.tar.gz"
      sha256 "858b7b54db29e3d4408bfd992ccd2e91d4055246d8cb2c5328532ee6fe2d0019"
    end
  end

  def install
    bin.install "cgrok"
  end

  test do
    system "#{bin}/cgrok", "--help"
  end
end
