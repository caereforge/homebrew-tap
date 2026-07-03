cask "tempo" do
  version "1.1.1,26"
  sha256 "a7efe5a1495abecdefad312d8a7c95256c34de4eb660ef2bb08a3b639e3d78a8"

  url "https://downloads.tempoapp.app/Tempo-#{version.csv.first}.dmg"
  name "Tempo"
  desc "One Mac timeline for everything your stack does"
  homepage "https://tempoapp.app"

  livecheck do
    url "https://downloads.tempoapp.app/appcast.xml"
    strategy :sparkle
  end

  # No auto_updates: Homebrew is the single update channel for cask installs.
  # The app detects a Homebrew install (Caskroom receipt) and stands Sparkle
  # down, so `brew upgrade` owns updates here — no self-updating behind brew's
  # back. Site-download installs keep Sparkle. Bump version + sha256 each
  # release so `brew upgrade` sees the new build.
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
