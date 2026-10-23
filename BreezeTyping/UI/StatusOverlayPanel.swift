import Cocoa

enum RecordingState {
    case recording
    case loadingModel
    case transcribing
    case correcting
}

/// A floating panel that shows the current recording/processing state near the cursor.
class StatusOverlayPanel: NSPanel {
    private let statusLabel = NSTextField(labelWithString: "")
    private let indicator = NSProgressIndicator()

    init() {
        super.init(
            contentRect: NSRect(x: 0, y: 0, width: 180, height: 40),
            styleMask: [.borderless, .nonactivatingPanel],
            backing: .buffered,
            defer: false
        )

        self.level = .floating
        self.isOpaque = false
        self.backgroundColor = .clear
        self.hasShadow = true
        self.isMovableByWindowBackground = false
        self.collectionBehavior = [.canJoinAllSpaces, .fullScreenAuxiliary]

        setupUI()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        let visualEffect = NSVisualEffectView(frame: self.contentView!.bounds)
        visualEffect.autoresizingMask = [.width, .height]
        visualEffect.blendingMode = .behindWindow
        visualEffect.material = .hudWindow
        visualEffect.state = .active
        visualEffect.wantsLayer = true
        visualEffect.layer?.cornerRadius = 10

        // Status label
        statusLabel.font = NSFont.systemFont(ofSize: 14, weight: .medium)
        statusLabel.textColor = .labelColor
        statusLabel.translatesAutoresizingMaskIntoConstraints = false

        // Spinning indicator
        indicator.style = .spinning
        indicator.controlSize = .small
        indicator.translatesAutoresizingMaskIntoConstraints = false
        indicator.isHidden = true

        let stackView = NSStackView(views: [indicator, statusLabel])
        stackView.orientation = .horizontal
        stackView.spacing = 8
        stackView.alignment = .centerY
        stackView.translatesAutoresizingMaskIntoConstraints = false

        visualEffect.addSubview(stackView)
        self.contentView?.addSubview(visualEffect)

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: visualEffect.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: visualEffect.centerYAnchor),
        ])
    }

    func show(state: RecordingState) {
        switch state {
        case .recording:
            statusLabel.stringValue = "🎤 錄音中..."
            indicator.isHidden = true
            indicator.stopAnimation(nil)
        case .loadingModel:
            statusLabel.stringValue = "⏳ 模型載入中..."
            indicator.isHidden = false
            indicator.startAnimation(nil)
        case .transcribing:
            statusLabel.stringValue = "📝 辨識中..."
            indicator.isHidden = false
            indicator.startAnimation(nil)
        case .correcting:
            statusLabel.stringValue = "✨ 校正中..."
            indicator.isHidden = false
            indicator.startAnimation(nil)
        }

        positionNearCursor()
        orderFront(nil)
    }

    func dismiss() {
        indicator.stopAnimation(nil)
        orderOut(nil)
    }

    private func positionNearCursor() {
        let mouseLocation = NSEvent.mouseLocation
        // Position slightly below and to the right of the cursor
        self.setFrameOrigin(NSPoint(
            x: mouseLocation.x + 15,
            y: mouseLocation.y - 50
        ))
    }
}
