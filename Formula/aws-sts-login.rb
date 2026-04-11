class AwsStsLogin < Formula
  desc "AWS Console auto-login CLI — captures STS temporary credentials via browser automation"
  homepage "https://github.com/circlesac/aws-sts-login"
  version "26.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-darwin-arm64.tar.gz"
      sha256 "ddc550b5b62017dc027d9b1c567fd3ca17ddf6619c9b2581dabb4487f6115a61"
    end
    on_intel do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-darwin-x64.tar.gz"
      sha256 "1c524cce21a9714f0b99c0bc353d8a620e613927df9a3b1a6a3353f6f9477663"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-linux-arm64.tar.gz"
      sha256 "c8d966880db93ac40c8f8303269b63ceead1da90ddc6a4be9165f3782e667e24"
    end
    on_intel do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-linux-x64.tar.gz"
      sha256 "86dd8725664a4e4a57feec95ff0ebef1bf19801a245ae9ffa0be2c852d198090"
    end
  end

  def install
    bin.install "aws-sts-login"
  end

  test do
    system "#{bin}/aws-sts-login", "--help"
  end
end
