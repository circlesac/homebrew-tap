cask "temple" do
  version "26.10.13"
  sha256 "f8a58338861bc5f2232585b2843b39428da125743b1ed9858f3fd9cd014a87b8"

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
