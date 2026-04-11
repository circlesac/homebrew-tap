class AwsStsLogin < Formula
  desc "AWS Console auto-login CLI — captures STS temporary credentials via browser automation"
  homepage "https://github.com/circlesac/aws-sts-login"
  version "26.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-darwin-arm64.tar.gz"
      sha256 "24686acdc3611c909dd4eda988856e4aca09ae2efd31e7cad5d48053ffea3bd6"
    end
    on_intel do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-darwin-x64.tar.gz"
      sha256 "492659d11d0cf8a87a70c49fcf52edeff859facb5cc0463d01601cf191397c54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-linux-arm64.tar.gz"
      sha256 "025485f1ae06bf9c2a6ba78b4b72b54d5d929c55d2ae339014e639ab8cb5da09"
    end
    on_intel do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-linux-x64.tar.gz"
      sha256 "6f04caf5ea668e6afe02adbd12004f21237962c6b6c5638969443b0664aa9976"
    end
  end

  def install
    bin.install "aws-sts-login"
  end

  test do
    system "#{bin}/aws-sts-login", "--help"
  end
end
