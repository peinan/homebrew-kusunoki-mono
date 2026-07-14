# homebrew-kusunoki-mono

Homebrew tap for [Kusunoki Mono](https://github.com/peinan/kusunoki-mono), a
personal Japanese coding font. The formula downloads every source, Apple
SF Mono included, and builds the font on your Mac — no font binary is
distributed.

```sh
brew tap peinan/kusunoki-mono
brew install --HEAD kusunoki-mono
cp "$(brew --prefix)/share/fonts/KusunokiMono-"*.otf ~/Library/Fonts/
```

`--HEAD` is required until the first tagged release. Everything else — what
the font is, the tuning knobs, the build pipeline — is documented in the
[main repository](https://github.com/peinan/kusunoki-mono).
