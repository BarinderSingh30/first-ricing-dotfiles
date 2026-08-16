import QtQuick // for Text
import Quickshell // for PanelWindow
import Quickshell.Io

Variants {
    model: Quickshell.screens;

    delegate: Component {
        PanelWindow {

            required property var modelData

            screen: modelData
            implicitHeight: 30

            anchors {
                top: true
                left: true
                right: true
            }

            Text {
                id: clock

                anchors.centerIn: parent

                Process {
                    id: dateProc

                    command: ["date"]
                    running: true

                    stdout: StdioCollector {
                        onStreamFinished: clock.text = this.text
                    }

                }

                Timer {
                    interval: 1000
                    running: true
                    repeat: true
                    onTriggered: dateProc.running = true
                }

            }

        }

    }

}
