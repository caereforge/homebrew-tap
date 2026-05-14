cask "tempo" do
  version "1.0.3,22"
  sha256 "8b60b66f7d9217eb25c753d525eb6b6f55e478b6d734d0206d49cb38a2d08e3e"

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
