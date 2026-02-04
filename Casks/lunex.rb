cask "lunex" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0-beta.2"
  sha256 :no_check

  url "https://github.com/zen8labs/lunex/releases/download/#{version}/Lunex_#{version}_#{arch}.dmg"
  name "Lunex"
  desc "A Smart AI Assistant for Everyone"
  homepage "https://lunex.zen8labs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Lunex.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Lunex.app"],
                   sudo: false
  end

  caveats <<~EOS
    If you encounter the "Lunex is damaged and can't be opened" error, please run the following command:
      xattr -cr #{appdir}/Lunex.app
  EOS

  zap trash: [
    "~/Library/Application Support/com.lunex.app",
    "~/Library/Caches/com.lunex.app",
    "~/Library/Saved Application State/com.lunex.app.savedState",
    "~/Library/Preferences/com.lunex.app.plist",
    "~/Library/WebKit/com.lunex.app",
    "~/Library/Logs/Lunex"
  ]
end
