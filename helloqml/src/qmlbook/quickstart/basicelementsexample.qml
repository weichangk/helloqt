import QtQuick 2.14
import QtQuick.Window 2.14

Window{
  width: 1600
  height: 900
  visible: true
  Rectangle{
    id: rect1
    x: 12; y: 12
    width: 76; height: 96
    color: "lightsteelblue"
    MouseArea {
      id: area
      width: parent.width; height: parent.height
      onClicked: rect2.visible = !rect2.visible
    }
  }
  Rectangle{
    id: rect2
    x: rect1.x + rect1.width + 10; y: 12
    width: 76; height: 96
    border.color: "lightsteelblue"
    border.width: 4
    radius: 8
  }
  Rectangle{
    id: rect3
    x: rect2.x + rect2.width + 10; y: 12
    width: 276; height: 96
    gradient: Gradient{
      GradientStop { position: 0.0; color: "red" }
      GradientStop { position: 0.33; color: "yellow" }
      GradientStop { position: 1.0; color: "green" }
    }
    border.color: "slategray"
    Text {
      text: "The quick brown fox"
      color: "#303030"
      font.family: "Ubuntu"
      font.pixelSize: 28
    }
    Image{
      x: 12; y: 12
      source: "qrc:/qmlbook/qmlbook/resources/image/triangle_red.png"
    }
    Image {
      x: 12+64+12; y: 12
      // width: 72
      height: 72/2
      source: "qrc:/qmlbook/qmlbook/resources/image/triangle_red.png"
      fillMode: Image.PreserveAspectCrop
      clip: true
    }
  }

}
