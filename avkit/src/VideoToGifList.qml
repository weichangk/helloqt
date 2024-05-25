import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

RadiusRectangle {
  id: videoToGifList
  cornersRadius: [0,0,0,10]
  antialiasing: true
  color: "transparent"

  ListModel {
    id: menuModel11
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
  }

  ColumnLayout {
    anchors.fill: parent
    anchors.leftMargin: 10; anchors.topMargin: 10; anchors.rightMargin: 0; anchors.bottomMargin: 20
    Rectangle {
      height: 40
      Layout.fillWidth: true
      anchors.left: parent.left
      anchors.leftMargin: 5
      color: "transparent"
      CustomFourStateImage {
        id: addFileImage
        width: 24
        height: 24
        anchors.verticalCenter: parent.verticalCenter
        source: "qrc:/resources/images/icon24_add_playlist.png"
      }
      CustomFourStateImage {
        id: addFilePathImage
        width: 24
        height: 24
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: addFileImage.right
        anchors.leftMargin: 5
        source: "qrc:/resources/images/icon24_file.png"
      }
      CustomFourStateImage {
        id: delFileImage
        width: 24
        height: 24
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 20
        source: "qrc:/resources/images/icon24_delete.png"
      }
    }
    ListView {
      id: listView
      visible: menuModel11.count > 0 ? true : false
      clip: true
      Layout.fillWidth: true
      Layout.fillHeight: true
      model: menuModel11
      spacing: 8
      ScrollIndicator.vertical: CustomVScrollIndicator {}
      delegate: Rectangle {
        width: listView.width - 12
        anchors.margins: 5
        height: 98
        radius: 10
        antialiasing: true
        color: "#232428"
        RowLayout{
          anchors.fill: parent
          anchors.margins: 8

          Rectangle {
            width: 20
            Layout.fillHeight: true
            color: "transparent"
            CustomCheckBox {
              anchors.verticalCenter: parent.verticalCenter
              // checked: true
            }
          }

          Rectangle {
            width: 120
            Layout.fillHeight: true
            color: "transparent"
            Image {
              id: iconImage
              anchors.fill: parent
              source: model.icon
            }
          }

          RowLayout{
            Layout.fillWidth: true
            Layout.fillHeight: true
            Rectangle {
              Layout.fillWidth: true
              Layout.fillHeight: true
              color: "transparent"
              Image {
                id: videoDecorationImage
                source: "qrc:/resources/images/icon16_video_decoration.png"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 10
              }
              Text {
                id: videoDecorationText
                anchors.left: videoDecorationImage.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 5
                color: "#B5BAC1"
                text: "MP4"
              }
              Text {
                id: fileNameText
                anchors.left: parent.left
                anchors.bottom: videoDecorationImage.top
                anchors.bottomMargin: 10
                anchors.leftMargin: 10
                color: "#B5BAC1"
                text: "123456789"
              }
            }
            Rectangle {
              Layout.fillWidth: true
              Layout.fillHeight: true
              color: "transparent"
              Image {
                id: resolutionDecorationImage
                source: "qrc:/resources/images/icon16_resolution_decoration.png"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 10
              }
              Text {
                id: resolutionDecorationText
                anchors.left: resolutionDecorationImage.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 5
                color: "#B5BAC1"
                text: "1920*1080"
              }
            }
            Rectangle {
              Layout.fillWidth: true
              Layout.fillHeight: true
              color: "transparent"
              Image {
                id: sizeDecorationImage
                source: "qrc:/resources/images/icon16_size_decoration.png"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 10
              }
              Text {
                id: sizeDecorationText
                anchors.left: sizeDecorationImage.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 5
                color: "#B5BAC1"
                text: "1024MB"
              }
            }
            Rectangle {
              Layout.fillWidth: true
              Layout.fillHeight: true
              color: "transparent"
              Image {
                id: timeDecorationImage
                source: "qrc:/resources/images/icon16_time_decoration.png"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 10
              }
              Text {
                id: timeDecorationText
                anchors.left: timeDecorationImage.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 5
                color: "#B5BAC1"
                text: "58:59"
              }
            }
          }

          Rectangle {
            width: 120
            Layout.fillHeight: true
            color: "transparent"
            RowLayout {
              id: convertedBtns
              visible: true
              anchors.fill: parent
              anchors.leftMargin: 20; anchors.rightMargin: 20
              Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "transparent"
                CustomFourStateImage {
                  width: 24
                  height: 24
                  anchors.horizontalCenter: parent.horizontalCenter
                  anchors.verticalCenter: parent.verticalCenter
                  source: "qrc:/resources/images/icon24_trim.png"
                }
              }
              Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "transparent"
                CustomFourStateImage {
                  width: 24
                  height: 24
                  rotation: 90
                  anchors.horizontalCenter: parent.horizontalCenter
                  anchors.verticalCenter: parent.verticalCenter
                  source: "qrc:/resources/images/icon24_previous.png"
                }
              }
              Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "transparent"
                CustomFourStateImage {
                  width: 24
                  height: 24
                  rotation: 270
                  anchors.horizontalCenter: parent.horizontalCenter
                  anchors.verticalCenter: parent.verticalCenter
                  source: "qrc:/resources/images/icon24_previous.png"
                }
              }
            }
          }
        }
      }
    }
    Rectangle
    {
      visible: menuModel11.count == 0 ? true : false
      Layout.fillWidth: true
      Layout.fillHeight: true
      color: "transparent"
      AddFileIllustration {
        width: 250; height: 180
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -30
        imageSource: "qrc:/resources/images/illustration160x120_add.png"
        descText: qsTr("点击添加或拖动文件到这里")
      }
    }
    // Rectangle {
    //   height: 100
    //   Layout.fillWidth: true
    //   anchors.left: parent.left
    //   anchors.right: parent.right
    //   anchors.rightMargin: 10
    //   color: "black"
    // }
    VideoPalyControl{
      height: 68
      Layout.fillWidth: true
      anchors.left: parent.left
      anchors.right: parent.right
      anchors.rightMargin: 10
    }
    VideoWorkList {
      height: 80
      Layout.fillWidth: true
      anchors.left: parent.left
      anchors.right: parent.right
      anchors.rightMargin: 10
    }
  }
}

