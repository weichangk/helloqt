import QtQuick
import QtQuick.Controls

Slider {
  id: control

  value: 0.5

  property alias bgImplicitWidth: bg.implicitWidth
  property alias bgImplicitHeight: bg.implicitHeight
  property alias handleImplicitWidth: handle.implicitWidth
  property alias handleImplicitHeight: handle.implicitHeight
  property alias bgBaseColor: bgbc
  property alias subpageBaseColor: subpagebc
  property alias handleBaseColor: handlebc

  background: Rectangle {
    id: bg
    BaseColor {
      id: bgbc
      defaultColor: "#5E5E6C"
      disabledColor: "#5E5E6C"
    }
    x: control.leftPadding
    y: control.topPadding + control.availableHeight / 2 - height / 2
    implicitWidth: 200
    implicitHeight: 3
    width: control.availableWidth
    height: implicitHeight
    radius: implicitHeight / 2
    color: enabled ? bgbc.defaultColor : bgbc.disabledColor
    gradient: enabled ? bgbc.defaultGradient : bgbc.disabledGradient

    Rectangle {
      id: subpage
      BaseColor {
        id: subpagebc
        defaultColor: "#C790FF"
        disabledColor: "#5E5E6C"
      }
      width: control.visualPosition * parent.width
      height: parent.height
      color: enabled ? subpagebc.defaultColor : subpagebc.disabledColor
      gradient: enabled ? subpagebc.defaultGradient : subpagebc.disabledGradient
      radius: 2
    }
  }

  handle: Rectangle {
    id: handle
    BaseColor {
      id: handlebc
      defaultColor: "#FFFFFF"
      disabledColor: "#8F8F8F"
    }
    x: control.leftPadding + control.visualPosition * (control.availableWidth - width)
    y: control.topPadding + control.availableHeight / 2 - height / 2
    implicitWidth: 10
    implicitHeight: 10
    radius: implicitHeight / 2
    color: enabled ? handlebc.defaultColor : handlebc.disabledColor
    gradient: enabled ? handlebc.defaultGradient : handlebc.disabledGradient
  }
}
