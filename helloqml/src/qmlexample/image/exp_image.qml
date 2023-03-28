import QtQuick 2.14
import QtQuick.Window 2.14

Window {
  width: 1000
  height: 700
  visible: true
  Grid {
    id: grid
    anchors.fill: parent
    anchors.margins: 8
    spacing: 8
    columns: 3

    Rectangle {
      id: rect1
      width: 200; height: 200
      color: "#00a3fc"
      Image {
        anchors.centerIn: parent
        source: "qrc:/qmlexample/qmlexample/resources/images/rocket.png"
        width: sourceSize.width * 1.5
        height: sourceSize.height * 1.5
        Component.onCompleted: console.log(width, height, sourceSize)//94 222 QSize(47, 111)
      }
    }

    // Rectangle {
    //   id: rect2
    //   width: 200; height: 200
    //   color: "#00a3fc"
    //   Image {
    //     id: img2
    //     anchors.fill: parent
    //     width: 200; height: 200
    //     //未能加载显示！未找到原因
    //     source: "https://eoimages.gsfc.nasa.gov/images/imagerecords/74000/74393/world.topo.200407.3x5400x2700.jpg"
    //     fillMode: Image.PreserveAspectFit
    //     Rectangle {
    //       color: "red"
    //       anchors { left: parent.left; bottom: parent.bottom }
    //       height: 50
    //       width: parent.width * img2.progress
    //       visible: img2.progress != 1
    //     }
    //     onStatusChanged: console.log(sourceSize)
    //   }
    // }

    Rectangle {
      id: rect3
      width: 200; height: 200
      color: "#00a3fc"
      Image {
        x: 50; y: 50
        source: "qrc:/qmlexample/qmlexample/resources/images/rocket.png"
        scale: 0.5
        rotation: 45.0
        Component.onCompleted: console.log(width, height, sourceSize)//70.5 166.5 QSize(47, 111)
      }
    }

    Rectangle {
      id: rect4
      width: 425; height: 200
      Image {
        x: 0; y: 0
        source: "qrc:/qmlexample/qmlexample/resources/images/vertical-gradient.png"
      }
      Image {
        x: 225; y: 0
        source: "qrc:/qmlexample/qmlexample/resources/images/diagonal-gradient.png"
      }
    }

    Rectangle {
      id: rect5
      width: 400; height: 350
      color: "#00a3fc"

      AnimatedImage {
        id: rect5_animation_image
        x: 100; y: 50
        width: 200; height: 200
        source: "qrc:/qmlexample/qmlexample/resources/images/image-animated.gif"
      }
      Rectangle {
        x: 100; y: 260; width: 200; height: 24
        color: "black"
        Rectangle {
          width: 4; height: 24
          color: "red"
          x: (parent.width - width) * rect5_animation_image.currentFrame / rect5_animation_image.frameCount
        }
        Text {
          text: "Frame %1 of %2".arg(rect5_animation_image.currentFrame).arg(rect5_animation_image.frameCount)
          color: "white"
          font.pixelSize: 18
        }
      }
    }
  }
}
