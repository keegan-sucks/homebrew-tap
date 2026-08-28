cask "flowstate" do
  version "0.1.4"
  sha256 "4c4778b342a6c8437f3835744b354851bff6cfff42db32b869a9a0af22ec11df"

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
