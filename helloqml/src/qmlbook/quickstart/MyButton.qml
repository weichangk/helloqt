import QtQuick 2.14

Rectangle {
  id: root
  property alias text: label.text
  signal clicked

  width: 116; height: 26
  color: "lightsteelblue"
  border.color: "slategrey"

  Text {
    id: label
    anchors.centerIn: parent
    text: "start"
  }

  MouseArea {
    anchors.fill: parent
    onClicked: {
      root.clicked()
      console.log("button clicked!")
    }
  }
}
