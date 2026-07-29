class Nosnitch < Formula
  desc "Stop your coding agent from snitching your code to model training"
  homepage "https://github.com/circlesac/nosnitch-cli"
  version "26.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-darwin-arm64.tar.gz"
      sha256 "7ba6fa1695669277eb0717406d11b4cf8e5287cc4138baa9124d397723fda21b"
    end
    on_intel do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-darwin-amd64.tar.gz"
      sha256 "c330b968643376a688ce3a338370833d95f062ae331e2ad499e9aea6ace33d36"
    end
  end

  on_linux do
    depends_on "libsecret"
    on_arm do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-linux-arm64.tar.gz"
      sha256 "f72a080bb6d69aa88aed6571bbb05dedf403b6011261a62f1abc13e6e48aba7f"
    end
    on_intel do
      url "https://github.com/circlesac/nosnitch-cli/releases/download/v#{version}/nosnitch-linux-amd64.tar.gz"
      sha256 "4d355a601fd42b808d6d11acd305c3202fa2d2d882556ad7ceaa3f2d5d60daa4"
    end
  end

  def install
    bin.install "nosnitch"
  end

  test do
    system "#{bin}/nosnitch", "version"
  end
end
