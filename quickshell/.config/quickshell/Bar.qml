// Bar.qml
import Quickshell

Scope {
    // no more time object

    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData

            screen: modelData
            implicitHeight: 20

            anchors {
                top: true
                left: true
                right: true
            }

            ClockWidget {
                // no more time binding

                anchors.centerIn: parent
            }

        }

    }

}
