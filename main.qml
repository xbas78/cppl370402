import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    visible: true
    title: "QMLPlayer"
    minimumHeight: 192
    minimumWidth: 384

    Rectangle {
        x: 1
        y: 1
        width: parent.width - 2
        height: parent.height - 69
        color: "gray"
    }

    Rectangle{
        width: 248
        height: 24
        color: "white"
        y: parent.height - 64
        anchors.horizontalCenter: parent.horizontalCenter

        Button {
            id: play
            width: 48
            height: 24
            x: 0
            Text {
                text: "⏵"
                font.pointSize: 13
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Button {
            id: pause
            width: 48
            height: 24
            x: 50
            Text {
                text: "⏸"
                font.pointSize: 13
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }

        }

        Button {
            id: rewind
            width: 48
            height: 24
            x: 100
            Text {
                text: "⏪︎"
                font.pointSize: 13
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Button {
            id: stop
            width: 48
            height: 24
            x: 150
            Text {
                text: "⏹"
                font.pointSize: 13
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Button {
            id: forward
            width: 48
            height: 24
            x: 200
            Text {
                text: "⏩︎"
                font.pointSize: 13
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }

    Slider {
        value: 0
        y: parent.height - 32
        height: 24
        handle.implicitHeight : 24
        handle.implicitWidth : 48
        width: parent.width
    }
}
