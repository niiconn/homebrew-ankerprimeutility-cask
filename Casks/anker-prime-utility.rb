cask "anker-prime-utility" do
  version "0.2.22"
  sha256 "f9a9c0317f8cd65fb67d362225702fefc0f6f8d44383c9ff4275434886a5110c"

  url "https://updates.niiconn.com/anker-prime-tool/AnkerPrimeUtility-#{version}.zip"
  name "Anker Prime Utility"
  desc "macOS utility for the Anker Prime Charger A2345 / 250W Desktop Charger"
  homepage "https://github.com/niiconn/macos-anker-prime-charger"

  livecheck do
    url "https://updates.niiconn.com/anker-prime-tool/appcast.xml"
    strategy :sparkle
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "AnkerPrimeUtility.app"

  zap trash: [
    "~/Library/Application Support/AnkerPrimeUtility",
    "~/Library/Caches/niiconn.anker-prime-utility",
    "~/Library/HTTPStorages/niiconn.anker-prime-utility",
    "~/Library/Preferences/niiconn.anker-prime-utility.plist",
    "~/Library/Saved Application State/niiconn.anker-prime-utility.savedState",
  ]
end
