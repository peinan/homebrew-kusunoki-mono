# Companion cask for the kusunoki-mono formula. The formula builds the font
# locally (no font binary is distributed); this cask copies the built OTFs
# into ~/Library/Fonts, refreshes them on upgrade and removes them on
# uninstall. The url below only pins the release version — the actual font
# files come from the formula's share/fonts via the preflight block.
cask "font-kusunoki-mono" do
  version "0.7.0"
  sha256 "1e016c2194387d15616f4817ecc324bc0e33618bf61f2dc1da493d278a1e069c"

  url "https://github.com/peinan/kusunoki-mono/archive/refs/tags/v#{version}.tar.gz"
  name "Kusunoki Mono"
  desc "Japanese coding font: SF Mono on a square grid + LINE Seed JP, built locally"
  homepage "https://github.com/peinan/kusunoki-mono"

  depends_on formula: "peinan/kusunoki-mono/kusunoki-mono"

  font "KusunokiMono-Regular.otf"
  font "KusunokiMono-Bold.otf"
  font "KusunokiMono-Italic.otf"
  font "KusunokiMono-BoldItalic.otf"

  preflight do
    fonts = Dir["#{HOMEBREW_PREFIX}/opt/kusunoki-mono/share/fonts/KusunokiMono-*.otf"]
    raise "No built fonts found; try `brew reinstall kusunoki-mono`" if fonts.empty?

    FileUtils.cp fonts, staged_path
  end
end
