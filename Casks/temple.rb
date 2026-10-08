cask "temple" do
  version "26.10.6"
  sha256 "4079b81a0b3b1d51add76d47b01cf6c881be9dd2961086b073c607ea0829e654"

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
