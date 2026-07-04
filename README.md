# homebrew-fxconvert

Homebrew tap for [FXConvert](https://github.com/rmurali200/FXConvert), a native macOS menu bar currency converter.

## Install

```bash
brew tap rmurali200/fxconvert
brew install --cask fxconvert
```

or, as a one-liner:

```bash
brew install rmurali200/fxconvert/fxconvert
```

Since this is a personal (third-party) tap rather than an official Homebrew tap, `brew install --cask` may refuse to load it the first time with an "untrusted tap" error. If that happens, run the command it suggests, e.g.:

```bash
brew trust --cask rmurali200/fxconvert/fxconvert
```

then retry the install.

FXConvert is unsigned (no Apple Developer Program membership yet), so on first launch you'll see *"Apple could not verify this app is free of malware"* with only **Done**/**Move to Trash** options — no inline "Open" button. To get past it:

1. Click **Done**.
2. Open **System Settings → Privacy & Security**.
3. Scroll to **Security** — click **Open Anyway** next to the FXConvert block message.
4. Confirm with your password/Touch ID, then click **Open** on the final confirmation dialog.

This is a one-time step; it launches normally after that.

This is a personal tap, not the official `homebrew-cask` repository — that requires code signing/notarization, which FXConvert doesn't have yet.

## Updating the cask

After a new FXConvert release:

1. Run `Scripts/package-release.sh <version>` in the [FXConvert](https://github.com/rmurali200/FXConvert) repo to get the new sha256.
2. Update `version`, `sha256`, and the release tag in `Casks/fxconvert.rb`'s `url` here.
3. Commit and push.
