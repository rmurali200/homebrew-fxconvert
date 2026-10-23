cask "fxconvert" do
  version "1.2.0"
  sha256 "9444934717db40e5aa21060a4c8400c021922f6e388d031a92a68156e4bbb8ea"

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
