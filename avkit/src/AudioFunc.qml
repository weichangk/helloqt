import QtQuick
import QtQuick.Controls

Rectangle {
  id: videoFunc
  anchors.fill: parent
  color: "transparent"

  ListModel {
    id: menuModel11
    ListElement { text: "Home"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/home-48.png" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/home-48.png" }
  }

  ListView {
    id: contentScrollViewList
    anchors.fill: parent
    model: menuModel11
    spacing: 8
    ScrollIndicator.vertical: CustomVScrollIndicator{}
    delegate: Rectangle {
      width: contentScrollViewList.width - 30
      height: 40
      radius: 6
      x: 15
      antialiasing: true
      border.color: "red"
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
        color: menuList.currentIndex === index ? "black" : "black" //选中字体颜色
      }
    }
  }
}

