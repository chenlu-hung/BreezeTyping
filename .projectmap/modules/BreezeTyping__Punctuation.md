# Module: `BreezeTyping/Punctuation`

## Summary
Inserts the punctuation that Breeze-ASR-25 never produces — its Mandarin fine-tuning data carries none, so the recogniser emits a bare character stream. `PunctuationManager` fetches FunASR's CT-Transformer tagger, runs it through sherpa-onnx in a few milliseconds on CPU, and `PunctuationSpacing` restores the CJK/Latin spacing the tagger discards on the way out. It sits between transcription and LLM correction and falls back to the raw transcript on any failure, so a dictation is never lost to this stage.

<!-- projectmap:auto:start (generated — do not edit by hand) -->
## Files (2)
- `BreezeTyping/Punctuation/PunctuationManager.swift`
- `BreezeTyping/Punctuation/PunctuationSpacing.swift`

## Public symbols (14)
- `enum PunctuationError` — BreezeTyping/Punctuation/PunctuationManager.swift:4
- `actor PunctuationManager` — BreezeTyping/Punctuation/PunctuationManager.swift:30
- `function isModelDownloaded` — BreezeTyping/Punctuation/PunctuationManager.swift:62
- `function downloadModel` — BreezeTyping/Punctuation/PunctuationManager.swift:67
- `function loadModel` — BreezeTyping/Punctuation/PunctuationManager.swift:103
- `function setupModel` — BreezeTyping/Punctuation/PunctuationManager.swift:127
- `function addPunctuation` — BreezeTyping/Punctuation/PunctuationManager.swift:140
- `class ProgressiveDownloader` — BreezeTyping/Punctuation/PunctuationManager.swift:167
- `function download` — BreezeTyping/Punctuation/PunctuationManager.swift:175
- `function urlSession` — BreezeTyping/Punctuation/PunctuationManager.swift:192
- `function urlSession` — BreezeTyping/Punctuation/PunctuationManager.swift:203
- `function urlSession` — BreezeTyping/Punctuation/PunctuationManager.swift:226
- `enum PunctuationSpacing` — BreezeTyping/Punctuation/PunctuationSpacing.swift:15
- `function restore` — BreezeTyping/Punctuation/PunctuationSpacing.swift:27

## Dependencies (imports)
- `Foundation`
- `SherpaOnnx`
<!-- projectmap:auto:end -->
