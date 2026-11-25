cask "prism" do
  version "26.11.5"
  sha256 "c7132cf97d18638c5f1e78c539966d8c5f443d673f299645dc13e7a5bfce58a9"

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
