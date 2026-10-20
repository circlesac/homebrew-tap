cask "prism" do
  version "26.10.7"
  sha256 "e3b3186db36914a5da06578a484c26bd30e75941ccfa019b180bf8a0db14474e"

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
