import QtQuick 2.14
import QtQuick.Controls 2.14

ApplicationWindow{
  visible: true
  width: 1500
  height: 900
  title: "QT5 编程入门"

  Rectangle {
    id: rect
    color: "lightblue"
    width: 200
    height: 100
    anchors.centerIn: parent

    Text {
        text: "Hello, World!"
        font.pointSize: 20
        anchors.centerIn: parent
    }
  }

}



