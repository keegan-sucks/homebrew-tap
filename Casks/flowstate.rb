cask "flowstate" do
  version "0.3.0"
  sha256 "5e2e4547cf3db031ecce78d98dc9c2bcc0974e77aeec2f5cc09c65c3e18e3254"

  url "https://github.com/keegan-sucks/flowstate-macos/releases/download/v#{version}/Flowstate.app.zip"
  name "Flowstate"
  desc "Menu-bar Pomodoro timer with a Spotify focus soundtrack"
  homepage "https://github.com/keegan-sucks/flowstate-macos"

  app "Flowstate.app"

  caveats <<~EOS
    Flowstate is ad-hoc signed, so on first launch macOS Gatekeeper will block it.
    Right-click the app and choose Open, or clear the quarantine flag once:
      xattr -dr com.apple.quarantine "/Applications/Flowstate.app"

    The soundtrack drives the Spotify app, which must be installed:
      brew install --cask spotify   (or from spotify.com)
    On first play, approve the one-time "Flowstate wants to control Spotify"
    prompt, and make sure you're logged in.

    To use your Liked Songs, mirror them into a playlist and point a slot at it
    (Spotify can't shuffle Liked Songs directly) — see the project README.
  EOS

  zap trash: [
    "~/Library/Preferences/com.keegan.flowstate.plist",
  ]
end
