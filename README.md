# keegan-sucks/homebrew-tap

Homebrew tap for my apps.

## Flowstate

A macOS menu-bar Pomodoro timer with a `spotify_player` focus soundtrack —
see [keegan-sucks/flowstate-macos](https://github.com/keegan-sucks/flowstate-macos).

```bash
brew install --cask keegan-sucks/tap/flowstate
```

It's ad-hoc signed, so on first launch either right-click → Open, or:

```bash
xattr -dr com.apple.quarantine "/Applications/Flowstate.app"
```
