import QtQuick
// Bar.qml
import Quickshell
import "clock"

Variants {
    model: Quickshell.screens

    PanelWindow {
        id: panel

        required property var modelData

        screen: modelData
        implicitHeight: 30
        color: "blue"

        anchors {
            top: true
            left: true
            right: true
        }

        Row {
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 10
            spacing: 8
        }

        Row {
            anchors.centerIn: parent
            spacing: 8
        }

        Row {
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 10
            spacing: 8

            ClockWidget {
                windowRef: panel
            }

        }

    }

}
