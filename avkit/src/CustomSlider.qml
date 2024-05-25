import QtQuick
import QtQuick.Controls

Slider {
  id: control
  property alias bgImplicitWidth: bg.implicitWidth
  property alias bgImplicitHeight: bg.implicitHeight
  property alias bgRadius: bg.radius

  property alias handleImplicitWidth: handle.implicitWidth
  property alias handleImplicitHeight: handle.implicitHeight
  property alias handleRadius: handle.radius

  value: 0.5
  background: Rectangle {
    id: bg
    x: control.leftPadding
    y: control.topPadding + control.availableHeight / 2 - height / 2
    implicitWidth: 200
    implicitHeight: 4
    width: control.availableWidth
    height: implicitHeight
    radius: 2
    color: "#565658"//"#bdbebf"

    Rectangle {
      width: control.visualPosition * parent.width
      height: parent.height
      color: "#A070FF"//"#21be2b"
      radius: 2
    }
  }

  handle: Rectangle {
    id: handle
    x: control.leftPadding + control.visualPosition * (control.availableWidth - width)
    y: control.topPadding + control.availableHeight / 2 - height / 2
    implicitWidth: 26
    implicitHeight: 26
    radius: 13
    color: control.pressed ? "#f0f0f0" : "#f6f6f6"
    border.color: "#bdbebf"
  }
}
