cask "temple" do
  version "26.10.4"
  sha256 "027588d6bb9c8482e9f3b26a65ecdf0a8633d0d3f2b1125ef4d1a7c187b78f27"

  url "https://releases.circles.ac/temple/#{version}/Temple-#{version}.dmg"
  name "Temple"
  desc "Temple for Mac, a menu bar bridge for Temple app"
  homepage "https://circles.ac/"

  livecheck do
    url "https://releases.circles.ac/temple/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma
  app "Temple.app"
  binary "#{appdir}/Temple.app/Contents/Resources/temple"
end
