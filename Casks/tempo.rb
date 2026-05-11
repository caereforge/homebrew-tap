cask "tempo" do
  version "0.2.6,12"
  sha256 "6a5a7a1a1c6be35a24da618a0c96502dd29897c0154c73f0f746561c45ea3588"

  url "https://downloads.tempoapp.app/Tempo-#{version.csv.first}.dmg"
  name "Tempo"
  desc "Native macOS event hub for calendar, tasks, alerts, and webhooks"
  homepage "https://tempoapp.app"

  livecheck do
    url "https://downloads.tempoapp.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Tempo.app"

  zap trash: [
    "~/Library/Application Support/Tempo",
    "~/Library/Caches/app.tempoapp.Tempo",
    "~/Library/Caches/app.tempoapp.Tempo.ShipIt",
    "~/Library/HTTPStorages/app.tempoapp.Tempo",
    "~/Library/Preferences/app.tempoapp.Tempo.plist",
    "~/Library/Saved Application State/app.tempoapp.Tempo.savedState",
    "~/Library/WebKit/app.tempoapp.Tempo",
  ]
end
