import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle {
        id: root
        width: parent.width; height: parent.height
        color: "#4A4A4A"

        Text {
            y: parent.height / 2
            width: root.width
            color: 'white'
            horizontalAlignment: Text.AlignHCenter
            text: 'Triangle'
        }
    }
}
