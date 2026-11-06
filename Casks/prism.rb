cask "prism" do
  version "26.11.1"
  sha256 "b3682f0a9eae0e2b0107091e3ad77583b8d9743f98ef516a7425c06fde2c026c"

  url "https://releases.circles.ac/prism/#{version}/Prism-#{version}.dmg"
  name "Prism"
  desc "Local gateway pooling Claude, ChatGPT, Cursor and Antigravity subscriptions"
  homepage "https://circles.ac/"

  livecheck do
    url "https://releases.circles.ac/prism/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Prism.app"
  binary "#{appdir}/Prism.app/Contents/Resources/prism"
end
