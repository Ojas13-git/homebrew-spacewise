cask "spacewise" do
  version "2.2.0"

  on_arm do
    sha256 "690335861a0d4ac27bb59e6824bf2434e3edb999d00cf3727bb09d2183511ff2"
    url "https://github.com/Ojas13-git/spacewise-releases/releases/download/v#{version}/SpaceWise-arm64.dmg"
  end

  on_intel do
    sha256 "5141c813bcb1127e962b3ecf676df173aabfad4ec116ff32f8ce5cb9e4032e0e"
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
