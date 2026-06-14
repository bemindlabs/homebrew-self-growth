cask "self-growth" do
  version "2026.6.14"
  sha256 "8f3ae95c66ee67adbd435ef55e34d9623ac08450f804794169884039d41d8236"

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
