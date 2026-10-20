cask "spacewise" do
  version "2.1.0"

  on_arm do
    sha256 "ARM64_SHA256"
    url "https://github.com/Ojas13-git/spacewise-releases/releases/download/v#{version}/SpaceWise-arm64.dmg"
  end
  on_intel do
    sha256 "UNIVERSAL_SHA256"
    url "https://github.com/Ojas13-git/spacewise-releases/releases/download/v#{version}/SpaceWise-Universal.dmg"
  end

  name "SpaceWise"
  desc "Local storage cleaner for developers"
  homepage "https://www.spacewisemac.in"

  app "SpaceWise.app"

  zap trash: [
    "~/Library/Application Support/SpaceWise",
    "~/Library/Preferences/app.spacewise.desktop.plist",
    "~/Library/Caches/app.spacewise.desktop",
  ]
end
