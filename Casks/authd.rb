cask "authd" do
  version "26.10.10"
  sha256 "b21713cae9d8722952df327d6609a972a5c9b4a8cd37005ea16d4d78293e43cb"

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

  # `delete:` always runs rm through sudo; the agent plist is the user's own file.
  uninstall launchctl: "com.circlesac.authd.app",
            script:    {
              executable: "/bin/rm",
              args:       ["-f", File.expand_path("~/Library/LaunchAgents/com.circlesac.authd.app.plist")],
              sudo:       false,
            }
end
