cask "temple" do
  version "26.10.19"
  sha256 "cda9d57600d2e7d84c504465d13b78f7b1e1a5f8c55a44d54bdd993f98190f4f"

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
