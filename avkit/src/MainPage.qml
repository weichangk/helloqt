import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
  id: mainPage
  color: "#313338"
  anchors.fill: parent
  radius: 10
  antialiasing: true

  property alias videoFuncCom: videoFunc

  ListModel {
    id: menuModel
    ListElement { text: "视频功能"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "音频功能"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "我的文件"; icon: "qrc:/resources/images/home-48.png" }
  }

  RadiusRectangle {
    id: menuBar
    width: 210
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    color: "#2B2D31"
    cornersRadius: [0,0,0,10]
    antialiasing: true

    ListView {
      id: menuList
      anchors.fill: parent
      topMargin: 25
      model: menuModel
      spacing: 8

      delegate: Rectangle {
        width: menuList.width - 30
        height: 40
        radius: 6
        x: 15
        antialiasing: true

        Gradient {
          id: gradient
          GradientStop { position: 0.0; color: "#292C3D" }
          GradientStop { position: 1.0; color: "#313338" }
          orientation: Gradient.Horizontal//横向渐变
        }
        Gradient {
          id: gradient0
          GradientStop { position: 0.0; color: "#2B2D31" }
          GradientStop { position: 1.0; color: "#2B2D31" }
          orientation: Gradient.Horizontal//横向渐变
        }
        gradient: menuList.currentIndex === index ? gradient : gradient0

        Image {
          id: iconImage
          source: model.icon
          width: 24
          height: 24
          anchors.verticalCenter: parent.verticalCenter
          anchors.left: parent.left
          anchors.leftMargin: 10
        }

        Text {
          id: textLabel
          text: model.text
          anchors.verticalCenter: parent.verticalCenter
          anchors.left: iconImage.right
          anchors.leftMargin: 20
          font.pixelSize: 16
          // font.bold: menuList.currentIndex === index //选中字体加粗
          color: menuList.currentIndex === index ? "#FFFFFF" : "#B5BAC1" //选中字体颜色
        }

        MouseArea {
          id: mouseArea
          anchors.fill: parent
          onClicked: {
            menuList.currentIndex = index
            mainPageBodyTabPage.currentIndex = index
          }
        }

        //颜色属性发生变化时触发动画，使颜色平滑过渡。
        Behavior on color {
          PropertyAnimation {
            duration: 200
          }
        }
      }

    }

  }

  RadiusRectangle {
    id: mainPageBody
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    anchors.left: menuBar.right
    anchors.right: parent.right
    // color: "#313338"
    color: "transparent"
    cornersRadius: [0,0,10,0]
    antialiasing: true

    StackLayout {
      id: mainPageBodyTabPage
      anchors.fill: parent
      anchors.margins: 5
      currentIndex: 0
      Rectangle {
        id: tabVideoFunc
        color: "transparent"
        VideoFunc{
          id: videoFunc
        }
      }
      Rectangle {
        id: tabAudioFunc
        color: "transparent"
        AudioFunc{}
      }
      Rectangle {
        id: tabMyFiles
        color: "transparent"
        MyFiles{}
      }
    }
  }
}
