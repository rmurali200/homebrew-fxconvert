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
    FXConvert is not yet code-signed or notarized. On first launch you'll see
    "Apple could not verify this app is free of malware" with only Done/Move
    to Trash options. Click Done, then go to System Settings > Privacy &
    Security, click "Open Anyway" next to the FXConvert block message, and
    confirm on the final dialog. This is only needed once.
  EOS
end
