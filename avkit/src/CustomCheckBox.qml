import QtQuick
import QtQuick.Controls

CheckDelegate {
  id: control
  height: 16
  text: ""
  padding: 0
  property color textCheckedColor: "#B5BAC1"
  property color textColor: "#B5BAC1"
  property color indicatorCheckedColor: "#A070FF"
  property color indicatorColor: "transparent"
  property color indicatorBorderCheckedColor: "#A070FF"
  property color indicatorBorderColor: "#39394D"
  contentItem: Text {
    // rightPadding: control.indicator.width + control.spacing //indicator 和 contentItem 换位置
    leftPadding: control.text == "" ? control.indicator.width : control.indicator.width + control.spacing
    text: control.text
    font: control.font
    opacity: enabled ? 1.0 : 0.3
    color: control.checked ? textCheckedColor : textColor //"#B5BAC1" : "#B5BAC1"
    elide: Text.ElideRight
    verticalAlignment: Text.AlignVCenter
  }

  indicator: Rectangle {
    implicitWidth: 16
    implicitHeight: 16
    x: 0//control.width - width - control.rightPadding //indicator 和 contentItem 换位置
    y: control.topPadding + control.availableHeight / 2 - height / 2
    radius: 3
    color: control.checked ? indicatorCheckedColor : indicatorColor //"#A070FF" : "transparent"
    border.color: control.checked ? indicatorBorderCheckedColor : indicatorBorderColor //"#A070FF" : "#39394D"

    // Rectangle {
    //   width: 10
    //   height: 10
    //   x: 5
    //   y: 5
    //   radius: 2
    //   color: control.checked ? "#17a81a" : "#21be2b"
    //   visible: control.checked
    // }
    Text {
      width: 10
      height: 10
      x: 2
      y: -1
      text: "✔"
      font.pointSize: 10
      color: control.checked ? "#B5BAC1" : "transparent"
      visible: control.checked
    }
  }

  background: Rectangle {
    color: "#ffffff"
    visible: false
  }
}
