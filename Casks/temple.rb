cask "temple" do
  version "26.11.7"
  sha256 "c92a68201c9a83b5c93df7a5023d1c70df6546d8964ba7528256235dcaf5230b"

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
