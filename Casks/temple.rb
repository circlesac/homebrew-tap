cask "temple" do
  version "26.11.17"
  sha256 "16a94553d7e7830c18ab1ed19a3f06ca8269ef8dc810ca34110b0987968042ed"

  url "https://releases.circles.ac/temple/#{version}/temple-server-#{version}.dmg"
  name "Temple Server"
  desc "Temple Server: the Mac side Datapad connects to"
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
