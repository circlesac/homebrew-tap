cask "authd" do
  version "26.10.6"
  sha256 "b37c13e5cc99150597eab78cc86db0f27c69ee40d813b9990c9d99636962970d"

  url "https://releases.circles.ac/authd/#{version}/authd-#{version}.dmg"
  name "authd"
  desc "Menu bar authentication manager for AWS and GitHub"
  homepage "https://github.com/circlesac/authd"

  livecheck do
    url "https://releases.circles.ac/authd/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura
  app "authd.app"
  binary "#{appdir}/authd.app/Contents/Resources/authd"

  postflight do
    system_command "/bin/sh",
                   args: ["#{appdir}/authd.app/Contents/Resources/install-agent.sh", "#{appdir}/authd.app"],
                   sudo: false
  end

  uninstall launchctl: "com.circlesac.authd.app",
            delete: "~/Library/LaunchAgents/com.circlesac.authd.app.plist"
end
