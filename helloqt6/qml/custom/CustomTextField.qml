import QtQuick
import QtQuick.Controls

TextField {
  id: control
  placeholderText: qsTr("Enter description")

  property alias bgImplicitWidth: bg.implicitWidth
  property alias bgImplicitHeight: bg.implicitHeight
  property alias bgRadius: bg.radius

  background: Rectangle {
    id: bg
    implicitWidth: 200
    implicitHeight: 40
    color: control.enabled ? "transparent" : "#353637"
    border.color: control.enabled ? "#39394D" : "transparent"
    radius: 20
  }
}
