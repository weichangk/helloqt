import QtQuick
import QtQuick.Controls

ScrollIndicator {
  id: control
  width: parent.width
  height: 10
  background: Rectangle {
    color: "transparent"
  }
  contentItem: Rectangle {
    color: "#2B2D31"
    radius: 10
    width: parent.width * (parent.width / parent.contentWidth)
    height: parent.height
  }
  visible: parent.width < parent.contentWidth
}
