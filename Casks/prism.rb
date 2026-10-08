cask "prism" do
  version "26.10.5"
  sha256 "c60a689976e8898f23e73265fa83237e24fd1db7c2597a1c9b213311ba97974d"

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
