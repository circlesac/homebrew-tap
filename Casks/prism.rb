cask "prism" do
  version "26.10.6"
  sha256 "74a440aa5037fba45a9d806f8250f089f7d407c5f2b694d4f6d627f61130c7c4"

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
