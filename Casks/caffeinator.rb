cask "caffeinator" do
  version "1.0"
  sha256 "62b61861c3c71521967968022d5ff5ae97a1d0918eede80634d5aeb47bf90665"

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
    launch, either install with --no-quarantine:

      brew install --cask --no-quarantine caffeinator

    or right-click the app in Applications and choose Open the first time.
  EOS
end
