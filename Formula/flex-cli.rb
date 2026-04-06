class FlexCli < Formula
  desc "CLI for Flex HR (flex.team)"
  homepage "https://github.com/circlesac/flex-cli"
  version "26.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flex-darwin-arm64.tar.gz"
      sha256 "effb6519079b4f80746bf1ac1224abd62da5804b167477643e5cdb85992f20a5"
    end
    on_intel do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flex-darwin-x64.tar.gz"
      sha256 "bfc52f240b4f67081afd06fdadaf99983101fca63ac54b137d33c3a765e18b39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flex-linux-arm64.tar.gz"
      sha256 "9867597833365266f4230e1c33cc7bb4083b4bc2c3319fc603558fa5e8e7bfca"
    end
    on_intel do
      url "https://github.com/circlesac/flex-cli/releases/download/v#{version}/flex-linux-x64.tar.gz"
      sha256 "eb92ec24e207195426df9a6b118a7600f3706e1e6997ef2257bac52f7e9b8a7f"
    end
  end

  def install
    bin.install "flex"
  end

  test do
    system "#{bin}/flex", "--help"
  end
end
