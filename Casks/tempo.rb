cask "tempo" do
  version "1.0.6,24"
  sha256 "9e5ccf710fa68686553ad14cc49690541c84c7ae4902a97bbfa26e64e479c473"

  url "https://downloads.tempoapp.app/Tempo-#{version.csv.first}.dmg"
  name "Tempo"
  desc "One Mac timeline for everything your stack does"
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
