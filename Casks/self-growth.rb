cask "self-growth" do
  version "2026.4.8"
  sha256 "d0da01428765d3a7f6431174000e6db83895462f06ebe4fb93dc13457e5cc729"

  url "https://github.com/bemindlabs/openclaw-self-growth-app/releases/download/v#{version}/Self.Growth_#{version}_aarch64.dmg"
  name "Self Growth"
  desc "AI-powered personal development desktop app"
  homepage "https://buildonclaw.cloud/products/self-growth"

  depends_on macos: ">= :ventura"

  app "Self Growth.app"

  postflight do
    system_command "/usr/bin/xattr",
         args: ["-cr", "#{appdir}/Self Growth.app"],
         sudo: true
  end

  zap trash: [
    "~/Library/Application Support/com.bemindlabs.growth.v2",
    "~/Library/Caches/com.bemindlabs.growth.v2",
    "~/Library/Preferences/com.bemindlabs.growth.v2.plist",
    "~/Library/Saved Application State/com.bemindlabs.growth.v2.savedState",
  ]
end
