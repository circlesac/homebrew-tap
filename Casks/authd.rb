cask "authd" do
  version "26.10.8"
  sha256 "28f67494749b18f1188b93ff80342410fb1f293efe3da71a685f276c3e278c24"

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
