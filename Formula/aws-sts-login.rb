class AwsStsLogin < Formula
  desc "AWS Console auto-login CLI — captures STS temporary credentials via browser automation"
  homepage "https://github.com/circlesac/aws-sts-login"
  version "26.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-darwin-arm64.tar.gz"
      sha256 "8d63eb6e8d08e2e40300befa16f727b4d3e3517ba7b44c34d515accf6c6b9a4e"
    end
    on_intel do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-darwin-x64.tar.gz"
      sha256 "bbe26a897a1bacb9bb2fb6bd277d4842d32b32a75e7bfbab00fe9e79ea91d474"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-linux-arm64.tar.gz"
      sha256 "ad6a438fcec4a3f97d2ba94a4924fd7403d2ac93da0b767f43bf014223e98cd6"
    end
    on_intel do
      url "https://github.com/circlesac/aws-sts-login/releases/download/v#{version}/aws-sts-login-linux-x64.tar.gz"
      sha256 "4c286489ad61aaaa832fb277bd8236008081578779bee0d2d69fb6fb4edcbd89"
    end
  end

  def install
    bin.install "aws-sts-login"
  end

  test do
    system "#{bin}/aws-sts-login", "--help"
  end
end
