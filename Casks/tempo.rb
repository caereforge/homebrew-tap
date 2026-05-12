cask "tempo" do
  version "0.3.1,18"
  sha256 "fe9f3ec1783912da9cafb8fd53dc4db9c6876153396393ebd8f51a44845dd0e5"

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
