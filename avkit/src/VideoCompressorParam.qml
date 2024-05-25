import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

RadiusRectangle {
  id: videoCompressorParam
  color: "#2B2D31"
  cornersRadius: [0,0,10,0]
  antialiasing: true

  Column{
    id: paramColumn
    anchors.fill: parent
    anchors.leftMargin: 20; anchors.topMargin: 22; anchors.rightMargin: 20; anchors.bottomMargin: 20
    spacing : 10

    Row {
      Text {
        width: paramColumn.width
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("文件质量：")
      }
    }
    Row {
      spacing: 25
      CustomRadioButton{
        text: qsTr("低")
      }
      CustomRadioButton{
        text: qsTr("中")
      }
      CustomRadioButton{
        text: qsTr("高")
      }
    }

    Rectangle {
      width: paramColumn.width
      height: 15
      color: "transparent"
    }

    Row {
      Text {
        width: paramColumn.width
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("期望输出大小：")
      }
    }

    Column {
      spacing : 10
      ButtonGroup { id: outputTypeRadioButtonGroup }
      Row {
        CustomRadioButton{
          ButtonGroup.group: outputTypeRadioButtonGroup
          width: 100
          text: qsTr("百分比")
        }
        CustomComboBox {
          y: -5
          width: 140
          bgImplicitWidth: 140
          bgImplicitHeight: 20
          model: ["Auto", "Second", "Third"]
        }
      }
      Row {
        CustomRadioButton{
          ButtonGroup.group: outputTypeRadioButtonGroup
          width: 100
          text: qsTr("大小")
        }
        CustomTextField {
          y: -5
          bgImplicitWidth: 75
          bgImplicitHeight: 25
          horizontalAlignment: Text.AlignLeft
          verticalAlignment: Text.AlignVCenter
          color: "#B5BAC1"
          text: qsTr("100")
        }
        Text {
          width: 5
        }
        CustomComboBox {
          y: -5
          width: 60
          bgImplicitWidth: 60
          bgImplicitHeight: 25
          model: ["GB", "MB", "KB"]
        }
      }
    }

    Rectangle {
      width: paramColumn.width
      height: 15
      color: "transparent"
    }

    Row {
      Text {
        width: 100
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("视频编码：")
      }
      CustomComboBox {
        y: -5
        width: 140
        bgImplicitWidth: 140
        bgImplicitHeight: 20
        model: ["Auto", "Second", "Third"]
      }
    }

    Row {
      Text {
        width: 100
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("分辨率：")
      }
      CustomComboBox {
        y: -5
        width: 140
        bgImplicitWidth: 140
        bgImplicitHeight: 20
        model: ["Auto", "Second", "Third"]
      }
    }

    Row {
      Text {
        width: 100
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("帧率：")
      }
      CustomComboBox {
        y: -5
        width: 140
        bgImplicitWidth: 140
        bgImplicitHeight: 20
        model: ["Auto", "Second", "Third"]
      }
    }

    Row {
      Text {
        width: 100
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("音频编码：")
      }
      CustomComboBox {
        y: -5
        width: 140
        bgImplicitWidth: 140
        bgImplicitHeight: 20
        model: ["Auto", "Second", "Third"]
      }
    }

    Row {
      Text {
        width: 100
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("声道：")
      }
      CustomComboBox {
        y: -5
        width: 140
        bgImplicitWidth: 140
        bgImplicitHeight: 20
        model: ["Auto", "Second", "Third"]
      }
    }

    Row {
      Text {
        width: 100
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("采样率：")
      }
      CustomComboBox {
        y: -5
        width: 140
        bgImplicitWidth: 140
        bgImplicitHeight: 20
        model: ["Auto", "Second", "Third"]
      }
    }

    Rectangle {
      width: paramColumn.width
      height: 15
      color: "transparent"
    }

    Row {
      Text {
        width: 60
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("格式：")
      }
      CustomComboBox {
        y: -5
        width: 180
        bgImplicitWidth: 180
        bgImplicitHeight: 20
        model: ["Auto", "Second", "Third"]
      }
    }

    Row {
      Text {
        width: 60
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("保存到：")
      }

      CustomTextField {
        y: -5
        width: 125
        bgImplicitWidth: 125
        bgImplicitHeight: 25
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("C:/Users/xx/Videos")
      }
      Text { width: 5 }
      CustomFourStateImage {
        id: editFilePathImage
        y: -5
        width: 24
        height: 24
        source: "qrc:/resources/images/icon24_edit.png"
      }
      Text { width: 5 }
      CustomFourStateImage {
        id: openFilePathImage
        y: -5
        width: 24
        height: 24
        source: "qrc:/resources/images/icon24_file.png"
      }
    }

    Row {
      width: paramColumn.width
      spacing: 5
      Rectangle{
        width: (paramColumn.width - 10) / 3
        height: 30
        radius: 15
        color: "transparent"
        border.width: 1
        border.color: "#A070FF"
        Text {
          anchors.verticalCenter: parent.verticalCenter
          anchors.horizontalCenter: parent.horizontalCenter
          color: "#B5BAC1"
          text: qsTr("重置")
        }
      }
      Rectangle{
        width: (paramColumn.width - 10) / 3
        height: 30
        radius: 15
        color: "transparent"
        border.width: 1
        border.color: "#A070FF"
        Text {
          anchors.verticalCenter: parent.verticalCenter
          anchors.horizontalCenter: parent.horizontalCenter
          color: "#B5BAC1"
          text: qsTr("保存")
        }
      }
      Rectangle{
        width: (paramColumn.width - 10) / 3
        height: 30
        radius: 15
        color: "transparent"
        border.width: 1
        border.color: "#A070FF"
        Text {
          anchors.verticalCenter: parent.verticalCenter
          anchors.horizontalCenter: parent.horizontalCenter
          color: "#B5BAC1"
          text: qsTr("应用所有")
        }
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
