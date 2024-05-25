import QtQuick
import QtQuick.Controls

Rectangle {
  id: videoCompressorPage
  // color: "#323233"
  color: "transparent"
  anchors.fill: parent
  radius: 10
  antialiasing: true

  VideoCompressorParam {
    id: videoCompressorParam
    anchors.top: parent.top
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    width: 280
  }

  VideoCompressorList {
    id: videoCompressorList
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: videoCompressorParam.left
    anchors.bottom: parent.bottom
  }
}
