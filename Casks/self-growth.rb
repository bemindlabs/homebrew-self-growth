cask "self-growth" do
  version "2026.6.11"
  sha256 "3680b7916dce92d59bc41f24ef79ab871779c508e7c09ed9a0f9d32840543452"

  url "https://github.com/bemindlabs/self-growth-app/releases/download/v#{version}/Self.Growth_#{version}_aarch64.dmg"
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
