import QtQuick
import QtQuick.Controls
import QtQuick.Shapes

//https://gist.github.com/HamedMasafi/fd79b6a3dbdcc57b9358fe2c58e34af0
Shape {
  id: shape
  property alias strokeColor: shapePath.strokeColor
  anchors.fill: parent
  ShapePath {
    id: shapePath
    strokeColor: '#39394D'
    strokeWidth: 2 //笔画宽度
    fillColor: 'transparent'
    strokeStyle: ShapePath.DashLine
    // dashPattern: [4, 2, 2, 2, 4, 2]//1,3,5；破折号；2，4，6间隔； 默认[4, 2]
    dashPattern: [3, 3]
    startX: radius
    startY: 0
    PathLine {
      x: shape.width - radius
      y: 0
    }
    PathCubic {
      control1X: shape.width
      control2X: shape.width
      control1Y: 0
      control2Y: 0
      x: shape.width
      y: radius
    }
    PathLine {
      x: shape.width
      y: shape.height - radius
    }
    PathCubic {
      control1X: shape.width
      control2X: shape.width
      control1Y: shape.height
      control2Y: shape.height
      x: shape.width - radius
      y: shape.height
    }
    PathLine {
      x: radius
      y: shape.height
    }
    PathCubic {
      control1X: 0
      control2X: 0
      control1Y: shape.height
      control2Y: shape.height
      x: 0
      y: shape.height - radius
    }
    PathLine {
      x: 0
      y: radius
    }
    PathCubic {
      control1X: 0
      control2X: 0
      control1Y: 0
      control2Y: 0
      x: radius
      y: 0
    }
  }
}
