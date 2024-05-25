import QtQuick
import QtQuick.Controls

Rectangle {
  id: mainPage
  // color: "#323233"
  color: "transparent"
  anchors.fill: parent
  radius: 10
  antialiasing: true

  VideoConverterParam {
    id: videoConverterParam
    anchors.top: parent.top
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    width: 280
  }

  VideoConverterList {
    id: videoConverterList
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: videoConverterParam.left
    anchors.bottom: parent.bottom
  }
}
