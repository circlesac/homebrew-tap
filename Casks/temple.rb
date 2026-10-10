cask "temple" do
  version "26.10.11"
  sha256 "b6900474cfc104005b5617d662c84d219d0090ce3b77b058b2a2c332d220053c"

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
