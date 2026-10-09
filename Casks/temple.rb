cask "temple" do
  version "26.10.8"
  sha256 "b66e0dfc75b12d3c5b4a6b519873444427653dca9c2a74c15099d2c000e262c3"

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
