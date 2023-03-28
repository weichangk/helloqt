import QtQuick 2.14
import QtQuick.Window 2.14

Window {
  width: 1300
  height: 900
  visible: true

  Grid {
    id: grid
    anchors.fill: parent
    anchors.margins: 8
    spacing: 8
    columns: 6

    Rectangle {
      id: rect1
      width: 200; height: 200

      property int padding: 10
      property int duration: 2000
      property bool running: false

      Image {
          id: box
          x: rect1.padding;
          y: rect1.padding;
          source: "qrc:/qmlbook/qmlbook/resources/image/box_green.png"

          NumberAnimation on x {
              to: rect1.width - box.width - rect1.padding
              duration: rect1.duration
              running: rect1.running
          }
          PropertyAnimation on y {
              to: rect1.height - box.height - rect1.padding
              duration: rect1.duration
              running: rect1.running
          }
          RotationAnimation on rotation {
              to: 360
              duration: rect1.duration
              running: rect1.running
          }
          PropertyAnimation on scale {
              to: 0.1
              duration: rect1.duration
              running: rect1.running
          }
      }

      MouseArea {
          anchors.fill: parent
          onClicked: rect1.running = true
      }

    }
  }
}
