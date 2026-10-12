cask "temple" do
  version "26.10.14"
  sha256 "8986c269ff55ebc11fef12451a440d4529dc708cd2a55f8d527204976546b6de"

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
