# homebrew-kusunoki-mono

Homebrew tap for [Kusunoki Mono](https://github.com/peinan/kusunoki-mono), a
personal Japanese coding font. The formula downloads every source, Apple
SF Mono included, and builds the font on your Mac — no font binary is
distributed.

```sh
brew tap peinan/kusunoki-mono
brew install kusunoki-mono
cp "$(brew --prefix)/share/fonts/KusunokiMono-"*.otf ~/Library/Fonts/
```

On Homebrew 6.0+, third-party taps must be trusted once before the first
install: `brew trust peinan/kusunoki-mono`.

Everything else — what the font is, the tuning knobs, the build pipeline —
is documented in the [main repository](https://github.com/peinan/kusunoki-mono).
