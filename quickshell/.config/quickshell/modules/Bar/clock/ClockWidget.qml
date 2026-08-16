import QtQuick
import Quickshell

Item {
    id: root

    property var windowRef

    implicitHeight: label.implicitHeight
    implicitWidth: label.implicitWidth

    SystemClock {
        id: clock

        precision: SystemClock.Minutes
    }

    Text {
        id: label

        anchors.centerIn: parent
        text: Qt.formatDateTime(clock.date, "hh:mm ap")
    }

    Calendar {
        id: calendarPopup

        targetWindow: windowRef
    }

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked: {
            calendarPopup.visible = !calendarPopup.visible;
        }
    }

    Calendar {
        targetWindow: windowRef
    }

}
