import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

RadiusRectangle {
  id: videoConverterParam
  // color: "transparent"
  color: "#2B2D31"
  cornersRadius: [0,0,10,0]
  antialiasing: true
  Column{
    id: paramColumn
    spacing : 10
    x: 10

    Rectangle {
      width: videoConverterParam.width - 20
      height: 12
      color: "transparent"
    }

    Row {
      Text {
        width: 70
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("Format:")
      }
      CustomComboBox {
        bgImplicitWidth: videoConverterParam.width - 20 - 70
        bgImplicitHeight: 20
        model: ["MP4", "Second", "Third"]
      }
    }

    Row{
      Text {
        width: 70
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("Title:")
      }
      CustomTextField {
        bgImplicitWidth: videoConverterParam.width - 20 - 70
        bgImplicitHeight: 20
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        // focus: true
        color: "#B5BAC1"
        text: qsTr("MP4")
      }
    }

    Rectangle{
      width: videoConverterParam.width - 20
      height: 30
      radius: 15
      color: "transparent"
      border.width: 1
      border.color: "#A070FF"
      Text {
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        color: "#B5BAC1"
        text: qsTr("Save as New Preset")
      }
    }

    Rectangle {
      width: videoConverterParam.width - 20
      height: 15
      color: "transparent"
    }

    Row{
      Text {
        width: 70
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("Video:")
      }
      Text {
        width: 90
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("Endocer")
      }
      CustomComboBox {
        bgImplicitWidth: videoConverterParam.width - 20 - 70 - 90
        bgImplicitHeight: 20
        model: ["Auto", "Second", "Third"]
      }
    }

    Row{
      Text {
        width: 70
      }
      Text {
        width: 90
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("Frame Rate")
      }
      CustomComboBox {
        bgImplicitWidth: videoConverterParam.width - 20 - 70 - 90
        bgImplicitHeight: 20
        model: ["Auto", "Second", "Third"]
      }
    }

    Row{
      Text {
        width: 70
      }
      Text {
        width: 90
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("Resolution")
      }
      CustomComboBox {
        bgImplicitWidth: videoConverterParam.width - 20 - 70 - 90
        bgImplicitHeight: 20
        model: ["Auto", "Second", "Third"]
      }
    }

    Row{
      Text {
        width: 70
      }
      Text {
        width: 90
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("Bitrate")
      }
      CustomComboBox {
        bgImplicitWidth: videoConverterParam.width - 20 - 70 - 90
        bgImplicitHeight: 20
        model: ["Auto", "Second", "Third"]
      }
    }

    Rectangle {
      width: videoConverterParam.width - 20
      height: 15
      color: "transparent"
    }

    Row{
      Text {
        width: 70
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("Audio:")
      }
      Text {
        width: 90
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("Endocer")
      }
      CustomComboBox {
        bgImplicitWidth: videoConverterParam.width - 20 - 70 - 90
        bgImplicitHeight: 20
        model: ["Auto", "Second", "Third"]
      }
    }

    Row{
      Text {
        width: 70
      }
      Text {
        width: 90
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("Sample Rate")
      }
      CustomComboBox {
        bgImplicitWidth: videoConverterParam.width - 20 - 70 - 90
        bgImplicitHeight: 20
        model: ["Auto", "Second", "Third"]
      }
    }

    Row{
      Text {
        width: 70
      }
      Text {
        width: 90
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("Channel")
      }
      CustomComboBox {
        bgImplicitWidth: videoConverterParam.width - 20 - 70 - 90
        bgImplicitHeight: 20
        model: ["Auto", "Second", "Third"]
      }
    }

    Row{
      Text {
        width: 70
      }
      Text {
        width: 90
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("Bitrate")
      }
      CustomComboBox {
        bgImplicitWidth: videoConverterParam.width - 20 - 70 - 90
        bgImplicitHeight: 20
        model: ["Auto", "Second", "Third"]
      }
    }

    Rectangle {
      width: videoConverterParam.width - 20
      height: 15
      color: "transparent"
    }

    Row {
      id: filePathRow
      Text {
        width: 70
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("Save to:")
      }
      CustomTextField {
        bgImplicitWidth: videoConverterParam.width - 20 - 70 - 48 - 10
        bgImplicitHeight: 20
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("C:/Users/xx/Videos")
      }
      Text { width: 5 }
      CustomFourStateImage {
        id: editFilePathImage
        width: 24
        height: 24
        source: "qrc:/resources/images/icon24_edit.png"
        anchors.verticalCenter: parent.verticalCenter
      }
      Text { width: 5 }
      CustomFourStateImage {
        id: openFilePathImage
        width: 24
        height: 24
        source: "qrc:/resources/images/icon24_file.png"
        anchors.verticalCenter: parent.verticalCenter
      }
    }

    Row {
      spacing: 5
      Rectangle{
        width: (videoConverterParam.width - 20 - 10) / 3
        height: 30
        radius: 15
        color: "transparent"
        border.width: 1
        border.color: "#A070FF"
        Text {
          anchors.verticalCenter: parent.verticalCenter
          anchors.horizontalCenter: parent.horizontalCenter
          color: "#B5BAC1"
          text: qsTr("Reset")
        }
      }
      Rectangle{
        width: (videoConverterParam.width - 20 - 10) / 3
        height: 30
        radius: 15
        color: "transparent"
        border.width: 1
        border.color: "#A070FF"
        Text {
          anchors.verticalCenter: parent.verticalCenter
          anchors.horizontalCenter: parent.horizontalCenter
          color: "#B5BAC1"
          text: qsTr("Save")
        }
      }
      Rectangle{
        width: (videoConverterParam.width - 20 - 10) / 3
        height: 30
        radius: 15
        color: "transparent"
        border.width: 1
        border.color: "#A070FF"
        Text {
          anchors.verticalCenter: parent.verticalCenter
          anchors.horizontalCenter: parent.horizontalCenter
          color: "#B5BAC1"
          text: qsTr("Apply to All")
        }
      }
    }
  }

  Rectangle {
    id: paramButtons
    anchors.top: paramColumn.bottom
    anchors.bottom: videoConverterParam.bottom
    anchors.left: videoConverterParam.left
    anchors.right: videoConverterParam.right
    color: "transparent"

    Rectangle{
      id: startBtn
      width: parent.width - 20
      height: 40
      anchors.bottom: parent.bottom
      anchors.left: parent.left
      anchors.leftMargin: 10
      anchors.bottomMargin: 15
      radius: 20
      color: "#A070FF"
      Text {
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        color: "#B5BAC1"
        text: qsTr("Start All")
      }
    }

  }
}
