# zazaulola/homebrew-tap

A [Homebrew](https://brew.sh) tap for my macOS apps.

## Caffeinator

A menu bar app that keeps your Mac awake — a friendly GUI for the built-in
`caffeinate` tool. Source: https://github.com/zazaulola/Caffeinator

```sh
brew tap zazaulola/tap
brew trust zazaulola/tap      # Homebrew 6+ requires trusting third-party tap casks
brew install --cask caffeinator
```

Caffeinator is ad-hoc signed and not notarized, so on first launch macOS
Gatekeeper may block it. Right-click `Caffeinator.app` in **Applications** and
choose **Open** once (or allow it under **System Settings → Privacy &
Security**). After that it opens normally.

### Updating / removing

```sh
brew upgrade --cask caffeinator          # update to the latest release
brew uninstall --cask caffeinator        # remove the app
brew uninstall --zap --cask caffeinator  # remove the app + its settings/login item
```
