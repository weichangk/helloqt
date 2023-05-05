import QtQuick
import QtQuick.Controls

ScrollIndicator {
  id: control
  width: 10
  height: parent.height
  background: Rectangle {
    color: "transparent"
  }
  contentItem: Rectangle {
    color: "#2B2D31"
    radius: 10
    width: parent.width
    height: parent.height * (parent.height / parent.contentHeight)
  }
  visible: parent.height < parent.contentHeight
}
