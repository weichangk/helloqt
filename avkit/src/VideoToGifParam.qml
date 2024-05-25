import QtQuick
import QtQuick.Controls

RadiusRectangle {
  id: videoToGifParam
  color: "#2B2D31"
  cornersRadius: [0,0,10,0]
  antialiasing: true

  Column{
    id: paramColumn
    anchors.fill: parent
    anchors.leftMargin: 20; anchors.topMargin: 22; anchors.rightMargin: 20; anchors.bottomMargin: 20
    spacing : 10

    Text {
      color: "#B5BAC1"
      text: qsTr("开始位置：")
    }
    TimeEdit4{
      width: paramColumn.width
      height: 36
    }

    Text {
      color: "#B5BAC1"
      text: qsTr("结束位置：")
    }
    TimeEdit4{
      width: paramColumn.width
      height: 36
    }


    Rectangle {
      width: 1
      height: 15
      color: "transparent"
    }

    Text {
      color: "#B5BAC1"
      text: qsTr("输出大小：")
    }
    Row {
      spacing: 10
      CustomTextField {
        y: -5
        bgImplicitWidth: 92
        bgImplicitHeight: 25
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("100")
      }
      Text {
        text: qsTr("x")
        color: "#B5BAC1"
      }
      CustomTextField {
        y: -5
        bgImplicitWidth: 92
        bgImplicitHeight: 25
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("100")
      }
      Text {
        text: qsTr("px")
        color: "#B5BAC1"
      }
    }

    Text {
      color: "#B5BAC1"
      text: qsTr("帧率:")
    }
    Row {
      spacing: 10
      CustomComboBox {
        y: -5
        width: 92
        bgImplicitWidth: 92
        bgImplicitHeight: 20
        model: ["Auto", "Second", "Third"]
      }
      Text {
        text: qsTr("帧")
        color: "#B5BAC1"
      }
    }

    Text {
      color: "#B5BAC1"
      text: qsTr("速度：")
    }
    Row {
      spacing: 10
      CustomComboBox {
        y: -5
        width: 92
        bgImplicitWidth: 92
        bgImplicitHeight: 20
        model: ["Auto", "Second", "Third"]
      }
      Text {
        color: "#B5BAC1"
        text: qsTr("倍")
      }
    }

    Rectangle {
      width: 1
      height: 15
      color: "transparent"
    }

    CustomCheckBox {
      text: qsTr("循环播放")
    }

    Rectangle {
      width: 1
      height: 15
      color: "transparent"
    }

    Text {
      color: "#B5BAC1"
      text: qsTr("保存到：")
    }
    Row {
      spacing: 10
      CustomTextField {
        y: -5
        width: 170
        bgImplicitWidth: 170
        bgImplicitHeight: 25
        color: "#B5BAC1"
        text: qsTr("C:/Users/xx/Videos")
      }
      CustomFourStateImage {
        id: editFilePathImage
        y: -5
        width: 24
        height: 24
        source: "qrc:/resources/images/icon24_edit.png"
      }
      CustomFourStateImage {
        id: openFilePathImage
        y: -5
        width: 24
        height: 24
        source: "qrc:/resources/images/icon24_file.png"
      }
    }

  }

  Rectangle{
  id: startBtn
  height: 40
  anchors.left: parent.left
  anchors.right: parent.right
  anchors.bottom: parent.bottom
  anchors.leftMargin: 20; anchors.rightMargin: 20; anchors.bottomMargin: 20
  radius: 20
  color: "#A070FF"
  Text {
    anchors.verticalCenter: parent.verticalCenter
    anchors.horizontalCenter: parent.horizontalCenter
    color: "#B5BAC1"
    font.pixelSize: 16
    font.bold: true
    text: qsTr("全部开始")
  }
}
}
