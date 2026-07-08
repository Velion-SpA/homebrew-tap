# Velion-SpA/homebrew-tap

Homebrew tap for [Omnia](https://github.com/Velion-SpA/omnia) — persistent memory for AI coding
agents, local-first with self-hosted multi-tenant cloud sync.

## Usage

```sh
brew tap velion-spa/tap
brew install omnia
```

Or in one line:

```sh
brew install velion-spa/tap/omnia
```

## Maintenance

Formulas in `Formula/` are managed by [GoReleaser](https://goreleaser.com) and published
automatically from the [`Velion-SpA/omnia`](https://github.com/Velion-SpA/omnia) repository's release
workflow whenever a `v*` tag is pushed. Do not hand-edit `Formula/omnia.rb` after the first
release — GoReleaser regenerates it on every release and any manual changes will be
overwritten.
