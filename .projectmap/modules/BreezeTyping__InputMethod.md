# Module: `BreezeTyping/InputMethod`

## Summary
The core IMK integration that ties all subsystems together. `BreezeTypingInputController` extends `IMKInputController` to intercept keyboard events and trigger the full record → transcribe → punctuate → LLM-correct → commit pipeline on the configurable hotkey. `InputMethodConstants` centralises the bundle connection name and default hotkey values used by `AppSettings`.

<!-- projectmap:auto:start (generated — do not edit by hand) -->
## Files (2)
- `BreezeTyping/InputMethod/InputMethodConstants.swift`
- `BreezeTyping/InputMethod/BreezeTypingInputController.swift`

## Public symbols (14)
- `enum InputMethodConstants` — BreezeTyping/InputMethod/InputMethodConstants.swift:3
- `class BreezeTypingInputController` — BreezeTyping/InputMethod/BreezeTypingInputController.swift:5
- `function activateServer` — BreezeTyping/InputMethod/BreezeTypingInputController.swift:14
- `function deactivateServer` — BreezeTyping/InputMethod/BreezeTypingInputController.swift:19
- `function handle` — BreezeTyping/InputMethod/BreezeTypingInputController.swift:33
- `function isVoiceInputTrigger` — BreezeTyping/InputMethod/BreezeTypingInputController.swift:45
- `function toggleRecording` — BreezeTyping/InputMethod/BreezeTypingInputController.swift:54
- `function startRecording` — BreezeTyping/InputMethod/BreezeTypingInputController.swift:62
- `function stopRecordingAndTranscribe` — BreezeTyping/InputMethod/BreezeTypingInputController.swift:79
- `function commitText` — BreezeTyping/InputMethod/BreezeTypingInputController.swift:131
- `function showStatusPanel` — BreezeTyping/InputMethod/BreezeTypingInputController.swift:143
- `function hideStatusPanel` — BreezeTyping/InputMethod/BreezeTypingInputController.swift:150
- `function menu` — BreezeTyping/InputMethod/BreezeTypingInputController.swift:156
- `function openSettings` — BreezeTyping/InputMethod/BreezeTypingInputController.swift:170

## Dependencies (imports)
- `Cocoa`
- `InputMethodKit`
<!-- projectmap:auto:end -->
