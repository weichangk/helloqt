import QtQuick
import QtQuick.Controls

Rectangle {
  id: videoToGifPage
  color: "transparent"
  anchors.fill: parent
  radius: 10
  antialiasing: true

  VideoToGifParam {
    id: videoToGifParam
    anchors.top: parent.top
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    width: 280
  }

  VideoToGifList {
    id: videoToGifList
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: videoToGifParam.left
    anchors.bottom: parent.bottom
  }
}
