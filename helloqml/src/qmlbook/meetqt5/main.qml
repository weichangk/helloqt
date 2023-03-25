import QtQuick 2.12
import QtQuick.Window 2.12

Window {
  width: root.width
  height: root.height
  visible: true
  title: qsTr("Hello World!")
  Item{
    id: root
    width: 512
    height: 320
    property int rotationStep: 45
    Image {
      id: background
      source: "qrc:/qmlbook/qmlbook/resources/image/background.png"
    }
    Image{
      id: pole
      x: (root.width - width)/2+2
      y: root.height - height
      source: "qrc:/qmlbook/qmlbook/resources/image/pole.png"
    }
    Image{
      id: pinwheel
      anchors.centerIn: parent
      source: "qrc:/qmlbook/qmlbook/resources/image/pinwheel.png"
      // visible: false
      Behavior on rotation{
        NumberAnimation { duration: 125 }
      }
    }
    Image {
      id: blur
      opacity: 0
      anchors.centerIn: parent
      source: "qrc:/qmlbook/qmlbook/resources/image/blur.png"
      // visible: false
      Behavior on rotation {
          NumberAnimation { duration: 125 }
      }
      Behavior on opacity {
          NumberAnimation { duration: 125 }
      }
    }

    focus: true
    Keys.onLeftPressed: {
        blur.opacity = 1
        pinwheel.rotation -= root.rotationStep
        blur.rotation -= root.rotationStep
    }
    Keys.onRightPressed: {
        blur.opacity = 0.5
        pinwheel.rotation += root.rotationStep
        blur.rotation += root.rotationStep
    }
    Keys.onReleased: {
        blur.opacity = 0
    }
  }
}
