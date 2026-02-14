class Notas < Formula
  desc "Multi-provider notes & docs CLI"
  homepage "https://github.com/circlesac/notas-cli"
  version "26.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-darwin-arm64.tar.gz"
      sha256 "7e6dbe87af4e1f2e6790f57f42660b6a17cbfb4af4ee1662c64c2a6d86d5e8c3"
    end
    on_intel do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-darwin-x64.tar.gz"
      sha256 "b536b5a99a367ae1f710a43cae731ed5343ccb4498e3e46e24b4d9f8d49dfdb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-linux-arm64.tar.gz"
      sha256 "fad7f7b04056caa24ce32b7f480bcab664e6b999f2aaae9c0ef06f832a295d36"
    end
    on_intel do
      url "https://github.com/circlesac/notas-cli/releases/download/v#{version}/notas-linux-x64.tar.gz"
      sha256 "71efa6650d6ba0628eafbf350aa96ba6fc92f7489fbc8b7c56687043342efd88"
    end
  end

  def install
    bin.install "notas"
  end

  test do
    system "#{bin}/notas", "--help"
  end
end
