class Prism < Formula
  desc "Manage provider accounts for Prism"
  homepage "https://github.com/circlesac/prism-cli"
  version "26.8.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-arm64.tar.gz"
      sha256 "42504273462c3891626521c65698db3826e55744a0f769fbf7ee1c8cfaace8a9"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-darwin-amd64.tar.gz"
      sha256 "9c0042a73c422237018f669ce1c8f3d549371cf405bc0ff1aeeb018c140e8b29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-arm64.tar.gz"
      sha256 "26750f5d0a6e3aba07410ffac4fc1232fa078e48c7a84a257472aab74a3efcbe"
    end
    on_intel do
      url "https://github.com/circlesac/prism-cli/releases/download/v#{version}/prism-linux-amd64.tar.gz"
      sha256 "ea042560dc68eb7c0859c568f3f1dc57d57bbe0a67bd9b636efa4199b3917d2b"
    end
  end

  def install
    bin.install "prism"
  end

  test do
    system "#{bin}/prism", "--version"
  end
end
