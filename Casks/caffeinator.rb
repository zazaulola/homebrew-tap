cask "caffeinator" do
  version "1.1"
  sha256 "54a2d37487fa3a0bfd14767c6765e13a129c3a1da93529f251d03f8b0315eb2a"

  url "https://github.com/zazaulola/Caffeinator/releases/download/v#{version}/Caffeinator-v#{version}.zip",
      verified: "github.com/zazaulola/Caffeinator/"
  name "Caffeinator"
  desc "Menu bar utility that keeps your Mac awake"
  homepage "https://github.com/zazaulola/Caffeinator"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Caffeinator.app"

  zap trash: [
    "~/Library/LaunchAgents/com.caffeinator.menubar.plist",
    "~/Library/Preferences/com.caffeinator.menubar.plist",
  ]

  caveats <<~EOS
    Caffeinator is ad-hoc signed and not notarized. If macOS blocks the first
    launch, right-click Caffeinator.app in Applications and choose Open once
    (or allow it under System Settings > Privacy & Security). After that it
    opens normally.
  EOS
end
