# Module: `BreezeTyping/Audio`

## Summary
Handles microphone capture and silence-based auto-stop. `AudioRecorder` opens an AVFoundation capture session on start, accumulates PCM audio into a buffer, and converts tap buffers to 16 kHz mono float samples via the Accelerate framework. `SilenceDetector` monitors RMS energy across frames and fires a callback after a configurable stretch of quiet audio, allowing hands-free stop-on-silence.

<!-- projectmap:auto:start (generated — do not edit by hand) -->
## Files (2)
- `BreezeTyping/Audio/AudioRecorder.swift`
- `BreezeTyping/Audio/SilenceDetector.swift`

## Public symbols (8)
- `class AudioRecorder` — BreezeTyping/Audio/AudioRecorder.swift:6
- `function startRecording` — BreezeTyping/Audio/AudioRecorder.swift:15
- `function stopRecording` — BreezeTyping/Audio/AudioRecorder.swift:66
- `function convertBuffer` — BreezeTyping/Audio/AudioRecorder.swift:77
- `function extractSamples` — BreezeTyping/Audio/AudioRecorder.swift:111
- `class SilenceDetector` — BreezeTyping/Audio/SilenceDetector.swift:5
- `function detectSilence` — BreezeTyping/Audio/SilenceDetector.swift:17
- `function reset` — BreezeTyping/Audio/SilenceDetector.swift:43

## Dependencies (imports)
- `AVFoundation`
- `Accelerate`
- `Foundation`
<!-- projectmap:auto:end -->
