cask "fxconvert" do
  version "1.1.0"
  sha256 "82cbd1de538fcde6638dcd684941d6d6824d4d82a8412f07cd6ef0e3be385240"

  url "https://github.com/rmurali200/FXConvert/releases/download/v#{version}/FXConvert.zip"
  name "FXConvert"
  desc "Native macOS menu bar currency converter"
  homepage "https://github.com/rmurali200/FXConvert"

  depends_on macos: :sonoma

  app "FXConvert.app"

  caveats <<~EOS
    FXConvert is not yet code-signed or notarized. On first launch, right-click
    (or Control-click) FXConvert.app in /Applications and choose "Open" to bypass
    Gatekeeper's "unidentified developer" warning. This is only needed once.
  EOS
end
