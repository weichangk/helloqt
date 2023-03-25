import QtQuick 2.14
import QtQuick.Window 2.14

Window {
  width: 900; height: 600
  visible: true

  Grid {
    id: grid
    anchors.fill: parent
    anchors.margins: 16
    spacing: 8
    columns: 3

    Rectangle {
      id: rec5
      width: 400
      height: 300
      MyGreenSquare {
        id: rec5_square
        x: 8; y: 8
      }
      focus: true
      Keys.onLeftPressed: rec5_square.x -= 8
      Keys.onRightPressed: rec5_square.x += 8
      Keys.onUpPressed: rec5_square.y -= 8
      Keys.onDownPressed: rec5_square.y += 8
      Keys.onPressed: {
          switch(event.key) {
              case Qt.Key_Plus:
                  rec5_square.scale += 0.2
                  break;
              case Qt.Key_Minus:
                  rec5_square.scale -= 0.2
                  break;
          }
      }
    }

    Rectangle {
      id: rec1
      width: 200; height: 80
      color: "linen"
      TextInput {
        id: rec1_ti1
        x: 8; y: 8
        width: 96; height: 20
        focus: true
        text: "text input 1"
        KeyNavigation.tab: rec1_ti2
      }
      TextInput {
        id: rec1_ti2
        x: 8; y: 36
        width: 96; height: 20
        text: "text input 2"
        KeyNavigation.tab: rec1_ti1
      }
    }

    Rectangle {
      id: rec2
      width: 200; height: 80
      color: "linen"
      MyTLineEditV1 {
        id: rec2_ti1
        x:8; y: 8
        focus: true
        text: "text input 1"
        KeyNavigation.tab: rec2_ti2
      }
      MyTLineEditV1 {
        id: rec2_ti2
        x:8; y: 36
        text: "text input 2"
        KeyNavigation.tab: rec2_ti1
      }
    }

    Rectangle {
      id: rec3
      width: 200; height: 80
      color: "linen"
      MyTLineEditV2 {
        id: rec3_ti1
        x:8; y: 8
        focus: true
        text: "text input 1"
        KeyNavigation.tab: rec3_ti2
      }
      MyTLineEditV2 {
        id: rec3_ti2
        x:8; y: 36
        text: "text input 2"
        KeyNavigation.tab: rec3_ti1
      }
    }

    Rectangle {
      id: rec4
      width: 136; height: 120
      color: "linen"
      MyTTextEdit {
        id: input
        x: 8; y: 8
        width: 120; height: 104
        focus: true
        text: "Text Edit"
      }
    }
  }
}
