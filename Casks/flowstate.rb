cask "flowstate" do
  version "0.1.9"
  sha256 "350211ad3a6ae869a29dfd9ba6dc0d348f06a776e416de8630b00d40a5f2a157"

  url "https://github.com/keegan-sucks/flowstate-macos/releases/download/v#{version}/Flowstate.app.zip"
  name "Flowstate"
  desc "Menu-bar Pomodoro timer with a Spotify focus soundtrack"
  homepage "https://github.com/keegan-sucks/flowstate-macos"

  depends_on cask: "spotify"

  app "Flowstate.app"

  caveats <<~EOS
    Flowstate is ad-hoc signed, so on first launch macOS Gatekeeper will block it.
    Right-click the app and choose Open, or clear the quarantine flag once:
      xattr -dr com.apple.quarantine "/Applications/Flowstate.app"

    The soundtrack drives the Spotify app. On first play, approve the one-time
    "Flowstate wants to control Spotify" prompt, and make sure you're logged in.

    To use your Liked Songs, mirror them into a playlist and point a slot at it
    (Spotify can't shuffle Liked Songs directly) — see the project README.
  EOS

  zap trash: [
    "~/Library/Preferences/com.keegan.flowstate.plist",
  ]
end
