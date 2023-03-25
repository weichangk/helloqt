import QtQuick 2.14
import QtQuick.Window 2.14

Window {
  width: 900; height: 600
  visible: true
  MyDarkAnchorsSquare {
    id: myDarkAnchorsSquare
    x: 12; y: 12
    width: 400; height: 240
    Grid {
      anchors.fill: parent
      anchors.margins: 16
      spacing: 8
      columns: 4

      MyGreenAnchorsSquare {
        MyBlueAnchorsSquare {
          width: 12
          anchors.fill: parent
          anchors.margins: 8
          text: '(1)'
        }
      }

      MyGreenAnchorsSquare {
        MyBlueAnchorsSquare {
          width: 48
          y: 8
          anchors.left: parent.left
          anchors.leftMargin: 8
          text: '(2)'
        }
      }

      MyGreenAnchorsSquare {
        MyBlueAnchorsSquare {
          width: 48
          anchors.left: parent.right
          text: '(3)'
        }
      }

      MyEmptyAnchorsSquare {}

      MyGreenAnchorsSquare {
        MyBlueAnchorsSquare {
          id: blue1
          width: 48; height: 24
          y: 8
          anchors.horizontalCenter: parent.horizontalCenter
        }
        MyBlueAnchorsSquare {
          id: blue2
          width: 72; height: 24
          anchors.top: blue1.bottom
          anchors.topMargin: 4
          anchors.horizontalCenter: blue1.horizontalCenter
          text: '(4)'
        }
      }

      MyGreenAnchorsSquare {
        MyBlueAnchorsSquare {
          width: 48
          anchors.centerIn: parent
          text: '(5)'
        }
      }

      MyGreenAnchorsSquare {
        MyBlueAnchorsSquare {
          width: 48
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.horizontalCenterOffset: -12
          anchors.verticalCenter: parent.verticalCenter
          text: '(6)'
        }
      }
    }
  }
}
