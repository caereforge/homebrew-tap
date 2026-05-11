# Caereforge Homebrew Tap

Official Homebrew tap for [Caereforge](https://caereforge.com) macOS applications.

## Available casks

### Tempo

A Mac-native event hub. One Mac-native timeline for everything your stack does — from rack-side monitoring to Mac-side automations, from third-party services to your own scripts. If it can POST, Tempo can hear it. Every event arrives in context, with the next move one click away. You stay the conductor; Tempo holds the score — and never acts on its own. Local-first, no cloud, no telemetry. Built for homelab operators, sysadmins, and Mac power users.

→ [tempoapp.app](https://tempoapp.app)

## Installation

```sh
brew tap caereforge/tap
brew install --cask tempo
```

After installation, Tempo will auto-update via Sparkle. You can also use `brew upgrade --cask tempo` if you prefer the Homebrew-driven flow.

## Uninstallation

```sh
brew uninstall --cask tempo
```

To also remove preferences, scores, and the local event database:

```sh
brew uninstall --cask --zap tempo
```

The `--zap` flag clears `~/Library/Application Support/Tempo` (database, scores, configuration), preferences, caches, and saved application state.

## System requirements

macOS 15 Sequoia or later. Apple silicon and Intel both supported via Universal binary.

## Versioning

Cask versions follow Tempo's Sparkle release cadence. `brew livecheck --cask tempo` reads the official Sparkle appcast at `https://downloads.tempoapp.app/appcast.xml`, so new Tempo releases are tracked automatically and the cask is bumped to match.

## Issues and contributions

For Tempo bugs or feature requests: [tempoapp.app/contact](https://tempoapp.app/contact) or join the Discord community linked from the homepage.

For tap-specific issues (cask metadata, install failures): open an issue on this repository.
