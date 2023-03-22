import QtQuick 2.14
import QtQuick.Window 2.12

Window{
  width: root.width
  height: root.height
  visible: true
  Rectangle{
    id: root
    width: 120
    height: 240
    color: "#4A4A4A"
    Image{
      id: triangle
      x: (root.width - width)/2 ; y:40
      source: "qrc:/image/resources/image/triangle_red.png"
    }
    Text{
      y:triangle.y + triangle.height + 20
      width: root.width
      color: "white"
      horizontalAlignment: Text.AlignHCenter
      text: "Triangle"
    }
  }
}
