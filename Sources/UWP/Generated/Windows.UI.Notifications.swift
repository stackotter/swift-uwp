// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.notifications.showntilenotification)
public final class ShownTileNotification : WinRTClass {
    private typealias SwiftABI = __ABI_Windows_UI_Notifications.IShownTileNotification
    private typealias CABI = __x_ABI_CWindows_CUI_CNotifications_CIShownTileNotification
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public static func from(abi: ComPtr<__x_ABI_CWindows_CUI_CNotifications_CIShownTileNotification>?) -> ShownTileNotification? {
        guard let abi = abi else { return nil }
        return .init(fromAbi: WindowsFoundation.IInspectable(abi))
    }

    @_spi(WinRTInternal)
    public init(fromAbi: WindowsFoundation.IInspectable) {
        super.init(fromAbi)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.notifications.showntilenotification.arguments)
    public var arguments : String {
        get { try! _default.get_ArgumentsImpl() }
    }

    deinit {
        _default = nil
    }
}

