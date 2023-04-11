import QtQuick
import QtQuick.Layouts

Row {
  spacing: 10
  Column {
    width: 300
    spacing: 10
    Rectangle {
      id: rect1
      width: parent.width
      color: "green"
      state: "WARING"
      Image {
        id: rect1_img1
        anchors.centerIn: parent
        source: "qrc:/qmlexample/qmlexample/resources/images/qtlogo.png"
      }
    }
  }
}


