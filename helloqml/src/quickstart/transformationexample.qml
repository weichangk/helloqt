import QtQuick 2.14
import QtQuick.Window 2.14

Window {
  width: 900
  height: 600
  visible: true
  Item {
    width: bg.width
    height: bg.height

    Image {
      id: bg
      source: "qrc:/image/resources/image/background.png"
    }
    MouseArea {
      id: backgroundClicker
      anchors.fill: parent
      onClicked: {
        circle.x = 84
        box.rotation = 0
        triangle.rotation = 0
        triangle.scale = 1.0
      }
    }

    MyClickableImage {
      id: circle
      x: 84; y: 68
      source: "qrc:/image/resources/image/circle_blue.png"
      antialiasing: true
      onClicked: {
          x += 20 //移动
      }
    }

    MyClickableImage {
      id: box
      x: 164; y: 68
      source: "qrc:/image/resources/image/box_green.png"
      antialiasing: true
      onClicked: {
        rotation += 15
      }
    }

    MyClickableImage {
      id: triangle
      x: 248; y: 68
      source: "qrc:/image/resources/image/triangle_red.png"
      antialiasing: true
      onClicked: {
        rotation += 15 //旋转
        scale += 0.05 //缩放
      }
    }

    function _test_transformed() {
      circle.x += 20
      box.rotation = 15
      triangle.scale = 1.2
      triangle.rotation = -15
    }

    function _test_overlap() {
      circle.x += 40
      box.rotation = 15
      triangle.scale = 2.0
      triangle.rotation = 45
    }
  }
}
