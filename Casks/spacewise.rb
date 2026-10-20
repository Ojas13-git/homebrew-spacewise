cask "spacewise" do
  version "2.1.0"

  on_arm do
    sha256 "ea46b62dad3962ff4f210c67c3e15b00e3b999f15348674f2bb58f9ad4106010"
    url "https://github.com/Ojas13-git/spacewise-releases/releases/download/v#{version}/SpaceWise-arm64.dmg"
  end

  on_intel do
    sha256 "73813a3b6a58d41267d84252efd4c19fa47981a6799b95145dbbd5140a9dff48"
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
