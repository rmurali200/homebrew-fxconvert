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

FXConvert is unsigned (no Apple Developer Program membership yet), so on first launch you'll need to right-click (or Control-click) `FXConvert.app` in `/Applications` and choose **Open** to bypass Gatekeeper's "unidentified developer" warning. This is a one-time step.

This is a personal tap, not the official `homebrew-cask` repository — that requires code signing/notarization, which FXConvert doesn't have yet.

## Updating the cask

After a new FXConvert release:

1. Run `Scripts/package-release.sh <version>` in the [FXConvert](https://github.com/rmurali200/FXConvert) repo to get the new sha256.
2. Update `version`, `sha256`, and the release tag in `Casks/fxconvert.rb`'s `url` here.
3. Commit and push.
