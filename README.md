# homebrew-kusunoki-mono

Homebrew tap for [Kusunoki Mono](https://github.com/peinan/kusunoki-mono), a
personal Japanese coding font. Every source, Apple SF Mono included, is
downloaded and built on your Mac — no font binary is distributed.

```sh
brew tap peinan/kusunoki-mono
brew install --cask font-kusunoki-mono
```

The cask builds the font via the `kusunoki-mono` formula and installs it into
`~/Library/Fonts`. `brew upgrade` refreshes the installed fonts, and
`brew uninstall --cask font-kusunoki-mono` removes them.

On Homebrew 6.0+, third-party taps must be trusted once before the first
install: `brew trust peinan/kusunoki-mono`.

If you had copied the fonts into `~/Library/Fonts` by hand before the cask
existed, remove them once before installing the cask:
`rm ~/Library/Fonts/KusunokiMono-*.otf`

To build the fonts without touching `~/Library/Fonts`, install only the
formula: `brew install kusunoki-mono` — the fonts land in
`$(brew --prefix)/share/fonts`.

Everything else — what the font is, the tuning knobs, the build pipeline —
is documented in the [main repository](https://github.com/peinan/kusunoki-mono).
