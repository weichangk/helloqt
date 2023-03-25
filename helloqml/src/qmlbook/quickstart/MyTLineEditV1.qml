import QtQuick 2.14

Rectangle {
  width: 96; height: 20
  color: "lightsteelblue"
  border.color: "gray"

  property alias text: input.text
  property alias input: input

  TextInput {
    id: input
    anchors.fill: parent
    anchors.margins: 4
    focus: true
  }
}
