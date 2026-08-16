import Quickshell

PopupWindow {
    id: calendarPopup

    property var targetWindow

    anchor.window: targetWindow
    anchor.rect.x: targetWindow.implicitWidth 
    anchor.rect.y: targetWindow.implicitHeight
    implicitWidth: 500
    implicitHeight: 500
    visible: false
}
