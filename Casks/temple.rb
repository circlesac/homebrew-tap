cask "temple" do
  version "26.10.16"
  sha256 "8ddeed0a0c7bac97402e68a8adcbb73f9836be6caf9e4779518b52375cb9a8fe"

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
