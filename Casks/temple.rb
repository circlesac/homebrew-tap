cask "temple" do
  version "26.11.16"
  sha256 "93740d4e740a87d938992b5cb93a79f3cfeb67e6bc421ef03586f90616427f2f"

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
