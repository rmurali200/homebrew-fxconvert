cask "fxconvert" do
  version "1.1.1"
  sha256 "10f0102943f529692e6c5598ec2214314bf251401fd4540b8a1d1f685a2c9ce6"

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
