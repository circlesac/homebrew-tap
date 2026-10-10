cask "temple" do
  version "26.10.10"
  sha256 "7cf414360f61f9bb22eff6fb42e828b90cdc03ae4f064249b1d321596e31a7bd"

  url "https://releases.circles.ac/temple/#{version}/Temple-#{version}.dmg"
  name "Temple"
  desc "Temple for Mac, a menu bar bridge for Temple app"
  homepage "https://circles.ac/"

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
