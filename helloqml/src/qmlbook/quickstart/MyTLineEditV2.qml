import QtQuick 2.14
FocusScope {
  width: 96; height: 20
  Rectangle {
    anchors.fill: parent
    color: "lightsteelblue"
    border.color: "gray"
  }
  property alias text: input.text
  property alias input: input

  TextInput {
    id: input
    anchors.fill: parent
    anchors.margins: 4
    focus: true
  }
}
