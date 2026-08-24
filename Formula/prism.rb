class Prism < Formula
  desc "Manage provider accounts for Prism"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.8.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "2cf8ae5c5cfa20221f6e879650928c268c0e1e906f6fddce6224d623d382338c"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "985cadf5c3d3fecf5ec83553406c8796f95efd1a01cb7c44530dbca786ce6fee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "277a9fb541c8b6672f8440be5246ea4a8386073dfbdc67e42125651f110f9974"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "9664fac7c6e3cfaaa7ea46ba3269f4abb83e90192e45caf66a8648930613d453"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
