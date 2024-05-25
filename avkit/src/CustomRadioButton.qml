import QtQuick
import QtQuick.Controls

RadioButton {
  id: control
  text: qsTr("RadioButton")

  padding: 0
  indicator: Rectangle {
    implicitWidth: 16
    implicitHeight: 16
    x: control.leftPadding
    y: parent.height / 2 - height / 2
    radius: 8
    border.color: control.checked ?"#A070FF" : "#39394D"
    color: control.checked ? "#A070FF" : "transparent"
    Rectangle {
      width: 8
      height: 8
      x: 4
      y: 4
      radius: 4
      color: control.checked ? "#B5BAC1" : "transparent"
      visible: control.checked
    }
  }

  contentItem: Text {
    text: control.text
    font: control.font
    opacity: enabled ? 1.0 : 0.3
    color: control.checked ? "#B5BAC1" : "#B5BAC1"
    verticalAlignment: Text.AlignVCenter
    leftPadding: control.text == "" ? control.indicator.width : control.indicator.width + control.spacing
  }
}
