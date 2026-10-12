cask "temple" do
  version "26.10.15"
  sha256 "2e0e1282a8a27abbb8297d8224f20a2569aa5dee0e0596bebf0aa620f239a4f7"

  url "https://releases.circles.ac/temple/#{version}/temple-#{version}.dmg"
  name "Temple"
  desc "Temple for Mac, a menu bar bridge for Temple app"
  homepage "https://temple.circles.ac/"

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
