class AwsStsLogin < Formula
  desc "AWS Console auto-login CLI — captures STS temporary credentials via browser automation"
  homepage "https://github.com/circlesac/aws-sts-login"
  version "26.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-darwin-arm64.tar.gz"
      sha256 "450a1f5233a94ed4ee9433be16f1e98b69aaea4ffe115591903f0ae307a88be6"
    end
    on_intel do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-darwin-x64.tar.gz"
      sha256 "c306a3fa844ddceb5bbd93e82d01fa01e2e76045e9a0ba99ab24799a895f2e52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-linux-arm64.tar.gz"
      sha256 "34944e7f1cb9b558b238c82cc005f67e632dbf6f10d98cc67d9ffcc40a4e99c8"
    end
    on_intel do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-linux-x64.tar.gz"
      sha256 "a89affe792f0142c8487d2701de146575ccea70b476643445a476cd1a2586134"
    end
  end

  def install
    bin.install "aws-sts-login"
  end

  test do
    system "#{bin}/aws-sts-login", "--help"
  end
end
