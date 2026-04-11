class Notas < Formula
  desc "Multi-provider notes & docs CLI"
  homepage "https://github.com/circlesac/notas-cli"
  version "26.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-darwin-arm64.tar.gz"
      sha256 "def41981c9e0c1c6670fb91670c2fe408bedf09a9ba3a5167dca4188b3d83b3f"
    end
    on_intel do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-darwin-x64.tar.gz"
      sha256 "e859a0861378f7f96a7642c6200aefd1b8d33692a3c086b5044ab7c4ace81d67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-linux-arm64.tar.gz"
      sha256 "a0d1e528639bb8bc54c7eeb1402f8159d17b9a6e209fb6a6659e1e860641d107"
    end
    on_intel do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-linux-x64.tar.gz"
      sha256 "31941b39e7cf1dcd12e32fa81caec97f32e1c98a7d12a9ba336a0890629b21fb"
    end
  end

  def install
    bin.install "notas"
  end

  test do
    system "#{bin}/notas", "--help"
  end
end
