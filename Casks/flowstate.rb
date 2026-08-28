cask "flowstate" do
  version "0.1.8"
  sha256 "bf2292a5cbd74858c77a558602cbc8511e11a7f0cf64c4081865a2e69c53788a"

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
