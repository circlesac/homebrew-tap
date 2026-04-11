class Notas < Formula
  desc "Multi-provider notes & docs CLI"
  homepage "https://github.com/circlesac/notas-cli"
  version "26.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-darwin-arm64.tar.gz"
      sha256 "20b9f79d52224a624458bce3c5e70e4cb88478ed37c57ca1e4062ed2ce2396c0"
    end
    on_intel do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-darwin-x64.tar.gz"
      sha256 "e26e422766b680501c1a7a1d584589e5a92f2e11765e831fc13e9922653d0e64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-linux-arm64.tar.gz"
      sha256 "505317f4f1e12c063bfc343d659c3d88db42b3378cde5276f2c8b52021b65f77"
    end
    on_intel do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-linux-x64.tar.gz"
      sha256 "da3b7cc257d38d3bc046f51a87f1adced9922fabd6f18c548c706cebcb934692"
    end
  end

  def install
    bin.install "notas"
  end

  test do
    system "#{bin}/notas", "--help"
  end
end
