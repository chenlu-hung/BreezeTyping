# Module: `BreezeTyping/UI`

## Summary
All visible UI components. `StatusOverlayPanel` is a floating, borderless `NSPanel` that appears near the cursor to show the current pipeline state (recording / transcribing / correcting), and `ModelDownloadPanel` renders startup progress, switching between the recognition and punctuation stages through `setStage`. `DownloadPanelController` wraps that panel as a `@MainActor` handle the model managers' progress closures can safely capture, and `SettingsView` is a three-tab SwiftUI form covering recognition, punctuation, and LLM correction, plus a `HotkeyRecorderButton` that captures a new trigger key combination directly from the keyboard.

<!-- projectmap:auto:start (generated — do not edit by hand) -->
## Files (3)
- `BreezeTyping/UI/ModelDownloadPanel.swift`
- `BreezeTyping/UI/SettingsView.swift`
- `BreezeTyping/UI/StatusOverlayPanel.swift`

## Public symbols (38)
- `class ModelDownloadPanel` — BreezeTyping/UI/ModelDownloadPanel.swift:5
- `function setupUI` — BreezeTyping/UI/ModelDownloadPanel.swift:34
- `function setStage` — BreezeTyping/UI/ModelDownloadPanel.swift:86
- `function updateProgress` — BreezeTyping/UI/ModelDownloadPanel.swift:99
- `function showLoadingModel` — BreezeTyping/UI/ModelDownloadPanel.swift:109
- `function showError` — BreezeTyping/UI/ModelDownloadPanel.swift:117
- `function dismiss` — BreezeTyping/UI/ModelDownloadPanel.swift:124
- `class DownloadPanelController` — BreezeTyping/UI/ModelDownloadPanel.swift:137
- `function present` — BreezeTyping/UI/ModelDownloadPanel.swift:145
- `function setStage` — BreezeTyping/UI/ModelDownloadPanel.swift:154
- `function updateProgress` — BreezeTyping/UI/ModelDownloadPanel.swift:158
- `function showLoadingModel` — BreezeTyping/UI/ModelDownloadPanel.swift:162
- `function showError` — BreezeTyping/UI/ModelDownloadPanel.swift:167
- `function dismiss` — BreezeTyping/UI/ModelDownloadPanel.swift:176
- `struct SettingsView` — BreezeTyping/UI/SettingsView.swift:4
- `struct HotkeyRecorderView` — BreezeTyping/UI/SettingsView.swift:141
- `function makeNSView` — BreezeTyping/UI/SettingsView.swift:142
- `function updateNSView` — BreezeTyping/UI/SettingsView.swift:153
- `class HotkeyRecorderButton` — BreezeTyping/UI/SettingsView.swift:160
- `function setupButton` — BreezeTyping/UI/SettingsView.swift:175
- `function refreshLabel` — BreezeTyping/UI/SettingsView.swift:187
- `function toggleListening` — BreezeTyping/UI/SettingsView.swift:196
- `function startListening` — BreezeTyping/UI/SettingsView.swift:204
- `function stopListening` — BreezeTyping/UI/SettingsView.swift:236
- `enum KeyCodeHelper` — BreezeTyping/UI/SettingsView.swift:255
- `function displayString` — BreezeTyping/UI/SettingsView.swift:257
- `function keyName` — BreezeTyping/UI/SettingsView.swift:270
- `function characterForKeyCode` — BreezeTyping/UI/SettingsView.swift:355
- `class KeyableWindow` — BreezeTyping/UI/SettingsView.swift:390
- `class SettingsWindowManager` — BreezeTyping/UI/SettingsView.swift:397
- `function showSettingsWindow` — BreezeTyping/UI/SettingsView.swift:403
- `function windowWillClose` — BreezeTyping/UI/SettingsView.swift:429
- `enum RecordingState` — BreezeTyping/UI/StatusOverlayPanel.swift:3
- `class StatusOverlayPanel` — BreezeTyping/UI/StatusOverlayPanel.swift:10
- `function setupUI` — BreezeTyping/UI/StatusOverlayPanel.swift:37
- `function show` — BreezeTyping/UI/StatusOverlayPanel.swift:72
- `function dismiss` — BreezeTyping/UI/StatusOverlayPanel.swift:92
- `function positionNearCursor` — BreezeTyping/UI/StatusOverlayPanel.swift:97

## Dependencies (imports)
- `Carbon.HIToolbox`
- `Cocoa`
- `SwiftUI`
<!-- projectmap:auto:end -->
