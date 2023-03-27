import QtQuick 2.14
import QtQuick.Window 2.14

Window {
  width: 1000
  height: 700
  visible: true
  Grid {
    id: grid
    anchors.fill: parent
    anchors.margins: 8
    spacing: 8
    columns: 3

    Rectangle {
      id: rect1
      width: 200; height: 200
      color: "#00a3fc"
      Image {
        anchors.centerIn: parent
        source: "qrc:/qmlexample/qmlexample/resources/images/rocket.png"
      }
  }
  }

}
