cask "nexo" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0-alpha.16"
  sha256 :no_check

  url "https://github.com/Nexo-Agent/nexo/releases/download/#{version}/Nexo_#{version}_#{arch}.dmg"
  name "Nexo"
  desc "A Smart AI Assistant for Everyone"
  homepage "https://nexo.nkthanh.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Nexo.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Nexo.app"],
                   sudo: false
  end

  caveats <<~EOS
    If you encounter the "Nexo is damaged and can't be opened" error, please run the following command:
      xattr -cr #{appdir}/Nexo.app
  EOS

  zap trash: [
    "~/Library/Application Support/com.nexo.app",
    "~/Library/Caches/com.nexo.app",
    "~/Library/Saved Application State/com.nexo.app.savedState",
    "~/Library/Preferences/com.nexo.app.plist",
    "~/Library/WebKit/com.nexo.app",
    "~/Library/Logs/Nexo"
  ]
end
