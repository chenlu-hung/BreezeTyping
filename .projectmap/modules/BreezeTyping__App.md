# Module: `BreezeTyping/App`

## Summary
Bootstrap layer for the macOS Input Method Extension. `AppDelegate` registers the `IMKServer` on launch, then walks two model stages — speech recognition, then punctuation — driving `DownloadPanelController` whenever either has to come over the network; a failed punctuation download is logged and skipped rather than treated as fatal, so only a broken recogniser aborts startup. `NSManualApplication` overrides `NSApplication` to enable full keyboard events inside the input method process; `main.swift` is the binary entry point.

<!-- projectmap:auto:start (generated — do not edit by hand) -->
## Files (3)
- `BreezeTyping/App/AppDelegate.swift`
- `BreezeTyping/App/NSManualApplication.swift`
- `BreezeTyping/App/main.swift`

## Public symbols (6)
- `class AppDelegate` — BreezeTyping/App/AppDelegate.swift:4
- `function applicationDidFinishLaunching` — BreezeTyping/App/AppDelegate.swift:8
- `function setupModelsOnLaunch` — BreezeTyping/App/AppDelegate.swift:27
- `function setupTranscriptionModel` — BreezeTyping/App/AppDelegate.swift:52
- `function setupPunctuationModel` — BreezeTyping/App/AppDelegate.swift:79
- `class NSManualApplication` — BreezeTyping/App/NSManualApplication.swift:3

## Dependencies (imports)
- `Cocoa`
- `InputMethodKit`
<!-- projectmap:auto:end -->
