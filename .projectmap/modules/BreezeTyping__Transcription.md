# Module: `BreezeTyping/Transcription`

## Summary
Manages the on-device WhisperKit model lifecycle and speech-to-text conversion. `WhisperKitManager` (a Swift actor) handles model discovery in HuggingFace Hub cache or a custom folder, downloads with progress callbacks, loads into memory, and exposes a `transcribe(audioSamples:)` method that returns plain text. It is a singleton shared by both `App` (model setup on launch) and `InputMethod` (transcription during recording).

<!-- projectmap:auto:start (generated — do not edit by hand) -->
## Files (1)
- `BreezeTyping/Transcription/WhisperKitManager.swift`

## Public symbols (7)
- `actor WhisperKitManager` — BreezeTyping/Transcription/WhisperKitManager.swift:7
- `function isModelDownloaded` — BreezeTyping/Transcription/WhisperKitManager.swift:33
- `function downloadModel` — BreezeTyping/Transcription/WhisperKitManager.swift:50
- `function loadModel` — BreezeTyping/Transcription/WhisperKitManager.swift:72
- `function setupModel` — BreezeTyping/Transcription/WhisperKitManager.swift:120
- `function findModelInHubCache` — BreezeTyping/Transcription/WhisperKitManager.swift:142
- `function transcribe` — BreezeTyping/Transcription/WhisperKitManager.swift:160

## Dependencies (imports)
- `Foundation`
- `Hub`
- `WhisperKit`
<!-- projectmap:auto:end -->
