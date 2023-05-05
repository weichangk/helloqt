import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "custom"

Rectangle {
  id: mainPage
  color: "#313338"
  anchors.fill: parent

  ListModel {
    id: menuModel
    ListElement { text: "界面模仿"; icon: "qrc:/weick.com/helloqt6/assets/home-48.png" }
    ListElement { text: "实践案例"; icon: "qrc:/weick.com/helloqt6/assets/home-48.png" }
    ListElement { text: "组件使用"; icon: "qrc:/weick.com/helloqt6/assets/home-48.png" }
    ListElement { text: "未完待续"; icon: "qrc:/weick.com/helloqt6/assets/home-48.png" }
  }

  Rectangle {
    id: menuBar
    width: 175
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    color: "#2B2D31"

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
          orientation: Gradient.Horizontal
        }
        Gradient {
          id: gradient0
          GradientStop { position: 0.0; color: "#2B2D31" }
          GradientStop { position: 1.0; color: "#2B2D31" }
          orientation: Gradient.Horizontal
        }
        gradient: menuList.currentIndex === index ? gradient : gradient0

        Image {
          id: iconImage
          source: model.icon
          width: 24
          height: 24
          anchors.verticalCenter: parent.verticalCenter
          anchors.left: parent.left
          anchors.leftMargin: 20
        }

        Text {
          id: textLabel
          text: model.text
          anchors.verticalCenter: parent.verticalCenter
          anchors.left: iconImage.right
          anchors.leftMargin: 10
          font.pixelSize: 16
          color: menuList.currentIndex === index ? "#FFFFFF" : "#B5BAC1"
        }

        MouseArea {
          id: mouseArea
          anchors.fill: parent
          onClicked: {
            menuList.currentIndex = index
            stackLayout.currentIndex = index
          }
        }

        Behavior on color {
          PropertyAnimation {
            duration: 200
          }
        }
      }
    }

  }

  Rectangle {
    id: mainPageBody
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    anchors.left: menuBar.right
    anchors.right: parent.right
    color: "transparent"

    StackLayout {
      id: stackLayout
      anchors.fill: parent
      currentIndex: 0
      UIimitate {
        id: uiimitate
      }
      PracticePage {
        id: practicePage
      }
      ComponentPage {
        id: componentPage
      }
    }
  }
}
