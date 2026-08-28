cask "flowstate" do
  version "0.1.5"
  sha256 "be283e412ef3461dfe71f7a3ed4fef0f5b182ca1863d8ceffe8aada05f94f525"

  url "https://github.com/keegan-sucks/flowstate-macos/releases/download/v#{version}/Flowstate.app.zip"
  name "Flowstate"
  desc "Menu-bar Pomodoro timer with a spotify_player focus soundtrack"
  homepage "https://github.com/keegan-sucks/flowstate-macos"

  depends_on formula: "spotify_player"

  app "Flowstate.app"

  caveats <<~EOS
    Flowstate is ad-hoc signed, so on first launch macOS Gatekeeper will block it.
    Right-click the app and choose Open, or clear the quarantine flag once:
      xattr -dr com.apple.quarantine "/Applications/Flowstate.app"

    The soundtrack needs spotify_player authenticated once (Spotify Premium):
      spotify_player authenticate

    Optional: install AeroSpace to auto-place the player terminal on a workspace.
  EOS

  zap trash: [
    "~/Library/Preferences/com.keegan.flowstate.plist",
  ]
end
