class AwsStsLogin < Formula
  desc "AWS Console auto-login CLI — captures STS temporary credentials via browser automation"
  homepage "https://github.com/circlesac/aws-sts-login"
  version "26.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-darwin-arm64.tar.gz"
      sha256 "9f53727c662df048b280ad0e0485e9d030f6972d713cd06a4bafb25718712ddb"
    end
    on_intel do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-darwin-x64.tar.gz"
      sha256 "c06785c779d6f8b488e0d8833402dcbef01754188c6aee80edd914cecc8cffb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-linux-arm64.tar.gz"
      sha256 "5e665fe9ac275b3796f035bf3c1c0216a21a3b85831d336550af3a1a6fe6756e"
    end
    on_intel do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-linux-x64.tar.gz"
      sha256 "02d525424308ea563b535f45a5bc7f2472f7f852ee9b179003cbfad15da67820"
    end
  end

  def install
    bin.install "aws-sts-login"
  end

  test do
    system "#{bin}/aws-sts-login", "--help"
  end
end
