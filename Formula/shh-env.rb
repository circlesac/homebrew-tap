class ShhEnv < Formula
  desc "Load secrets from OS keychain and inject as environment variables"
  homepage "https://github.com/circlesac/shh-env"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-darwin-arm64.tar.gz"
      sha256 "96162aac09d915a99e0addcf4bf7006fe2016a8c34bcc5e829fb07305a1d5188"
    end
    on_intel do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-darwin-x64.tar.gz"
      sha256 "003905d1954abfa762208ebbcbb79cab4875adcbcc9bb6feb0b36442489b394e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-linux-arm64.tar.gz"
      sha256 "43123b570159a019ef3f75ac128f3a8d32afe382d5c4e3cb37b68f22362ee28d"
    end
    on_intel do
      url "https://github.com/circlesac/shh-env/releases/download/v#{version}/shh-env-linux-x64.tar.gz"
      sha256 "2a649da70a2d2bdfa8c40b49a691f80228b81dd4fb68e82609e736b5ef3ce9be"
    end
  end

  def install
    bin.install "shh-env"
  end

  test do
    system "#{bin}/shh-env", "--help"
  end
end
