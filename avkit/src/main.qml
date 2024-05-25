import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import FramelessWindow 1.0

FramelessWindow {
  id: root
  visible: true
  width: 1064
  height: 678
  // minimumWidth: 1064
  // minimumHeight: 678
  color: "transparent"//在Qt 6.5中不会完全透明!

  Rectangle {
    id: main
    color: "#313338"//设置transparent锯齿效果更严重！
    anchors.fill: parent
    radius: 10
    border.color: "#555563"
    //border.color: "red"
    border.width: 1
    antialiasing: true

    RadiusRectangle {
      id: titleBar
      //为显示main border
      x: 1; y: 1; width: main.width - 2
      height: 40
      color: "#1E1F22"
      cornersRadius: [10,10,0,0]
      antialiasing: true

      Image {
        id: logo
        source: "qrc:/resources/images/logo30.png"
        width: 30
        height: 30
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 10
      }
      Text {
        text: qsTr("AVConverter Toolkits")
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 48
        color: "#B5BAC1"
      }
      CustomFourStateImage {
        id: closeImage
        width: 24
        height: 24
        source: "qrc:/resources/images/icon24_close.png"
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 15
      }
      CustomFourStateImage {
        id: miniImage
        width: 24
        height: 24
        source: "qrc:/resources/images/icon24_mini.png"
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 45
      }
      CustomFourStateImage {
        id: menuImage
        width: 24
        height: 24
        source: "qrc:/resources/images/icon24_menu.png"
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 75
      }
      CustomFourStateImage {
        id: feedbackImage
        width: 24
        height: 24
        source: "qrc:/resources/images/icon24_feedback.png"
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 105
      }
      CustomFourStateImage {
        id: accountImage
        width: 24
        height: 24
        source: "qrc:/resources/images/icon24_account_off.png"
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 135
      }
      Rectangle {
        id: goHome
        radius: 12
        width: 75
        height: 24
        color: "#272C37"
        antialiasing: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 175
        visible: mainBodyTabPage.currentIndex != 0
        Row{
          anchors.fill: parent
          leftPadding: 4
          Image {
            id: goHomeIcon
            source: "qrc:/resources/images/icon24_thumbnail.png"
            width: 24
            height: 24
            fillMode: Image.Tile
            horizontalAlignment: Image.AlignLeft
            verticalAlignment: Image.AlignTop
            anchors.verticalCenter: parent.verticalCenter
          }
          Text {
            id: goHomeText
            anchors.verticalCenter: parent.verticalCenter
            text: qsTr("Home")
          }
        }
        state: "DEFAULT"
        states: [
          State{
            name: "DEFAULT"
            PropertyChanges {
              goHome {
                color: "#272C37"
              }
              goHomeIcon {
                sourceClipRect: Qt.rect(0, 0, 24, 24)
              }
              goHomeText {
                color: "#B5BAC1"
              }
            }
          },
          State{
            name: "MOUSOVER"
            PropertyChanges {
              goHome {
                color: "#2B313F"
              }
              goHomeIcon {
                sourceClipRect: Qt.rect(24, 0, 24, 24)
              }
              goHomeText {
                color: "#FFFFFF"
              }
            }
          },
          State{
            name: "PRESSED"
            PropertyChanges {
              goHome {
                color: "#272C37"
              }
              goHomeIcon {
                sourceClipRect: Qt.rect(48, 0, 24, 24)
              }
              goHomeText {
                color: "#B5BAC1"
              }
            }
          },
          State{
            name: "DISENABLED"
            PropertyChanges {
              target: goHomeIcon
              sourceClipRect: Qt.rect(72, 0, 24, 24)
            }
          }
        ]
        MouseArea {
          anchors.fill: parent
          hoverEnabled: true
          onClicked: {
            mainBodyTabPage.currentIndex = 0
          }
          onPressed: {
            goHome.state = "PRESSED"
          }
          onEntered: {
            goHome.state = "MOUSOVER"
          }
          onExited: {
            goHome.state = "DEFAULT"
          }
        }
      }
    }

    StackLayout {
      id: mainBodyTabPage
      anchors.leftMargin: 1; anchors.rightMargin: 1; anchors.bottomMargin: 1
      anchors.top: titleBar.bottom
      anchors.bottom: parent.bottom
      anchors.left: parent.left
      anchors.right: parent.right
      currentIndex: 0
      Rectangle {
        id: tabMain
        color: "transparent"
        MainPage{
          id: mainPage
          // Connections{
          //   target: mainPage.videoFuncCom
          //   function onSendVideoFuncItemSig(item){
          //     console.log("QtObject " + item.name)
          //   }
          // }
          Component.onCompleted: {
            mainPage.videoFuncCom.sendVideoFuncItemSig.connect(onSendVideoFuncItemSig)
          }
          function onSendVideoFuncItemSig(item){
            if(item.uniqueName === "VideoConverter")
              mainBodyTabPage.currentIndex = 1
            else if(item.uniqueName === "VideoCompressor")
              mainBodyTabPage.currentIndex = 2
            else if(item.uniqueName === "VideoMerge")
              mainBodyTabPage.currentIndex = 3
            else if(item.uniqueName === "VideoToGif")
              mainBodyTabPage.currentIndex = 4
          }
        }
      }
      Rectangle {
        id: tabVideoConverter
        color: "transparent"
        VideoConverterPage{}
      }
      Rectangle {
        id: tabVideoCompressor
        color: "transparent"
        VideoCompressorPage{}
      }
      Rectangle {
        id: tabVideoMerge
        color: "transparent"
        VideoMergePage{}
      }
      Rectangle {
        id: tabVideoToGif
        color: "transparent"
        VideoToGifPage{}
      }
    }
  }
}
