import QtQuick
import QtQuick.Controls

Button {
  id: control
  text: qsTr("Button")

  property alias bgImplicitWidth: bg.implicitWidth
  property alias bgImplicitHeight: bg.implicitHeight
  property alias bgRadius: bg.radius
  property alias bgColor: bg.color
  property alias bgBorderColor: bg.border.color
  property alias txColor: tx.color

  contentItem: Text {
    id: tx
    text: control.text
    font: control.font
    opacity: enabled ? 1.0 : 0.3
    // color: control.down ? "#17a81a" : "#21be2b"
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter
    elide: Text.ElideRight
  }

  background: Rectangle {
    id: bg
    implicitWidth: 100
    implicitHeight: 40
    opacity: enabled ? 1 : 0.3
    // border.color: control.down ? "#17a81a" : "#21be2b"
    border.width: 1
    radius: 2
  }
}
