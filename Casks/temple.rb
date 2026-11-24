cask "temple" do
  version "26.11.11"
  sha256 "2a6844b110d8962e868ca463014b808df09fd31f77e978329e309d6fc1f5b24f"

  url "https://releases.circles.ac/temple/#{version}/temple-server-#{version}.dmg"
  name "Temple Server"
  desc "Temple Server: the Mac side Temple apps connect to"
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
