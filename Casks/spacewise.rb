cask "spacewise" do
  version "2.2.1"

  on_arm do
    sha256 "6c1d7ef56dae1a24afdfa75dd9c8408103592159b6595e281b448a7ac3435df0"
    url "https://github.com/Ojas13-git/spacewise-releases/releases/download/v#{version}/SpaceWise-arm64.dmg"
  end

  on_intel do
    sha256 "3cc8f458d357a85cdb93b3cfa0418117a0b26b8d8337c43c57136b0b0ef6c2aa"
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
