import QtQuick 2.14
import QtQuick.Window 2.14

Window {
  width: 900
  height: 600
  visible: true
  MyDarkSquare {
    id: columnsqure
    x: 12; y: 12
    width: 120; height: 240
    Column {
      id: column
      anchors.centerIn: parent
      spacing: 8
      MyRedSquare { }
      MyGreenSquare { width: 96 }
      MyBlueSquare { }
    }
  }

  MyBrightSquare {
    id: rowsqure
    x: columnsqure.x + columnsqure.width + 20; y:12
    width: 400; height: 120
    Row {
      id: row
      anchors.centerIn: parent
      spacing: 20
      MyBlueSquare { }
      MyGreenSquare { }
      MyRedSquare { }
    }
  }

  MyBrightSquare {
    id:gridsqure
    width: 160; height: 160
    x: rowsqure.x + rowsqure.width + 20; y:12
    Grid{
      id: grid
      columns: 2
      rows: 2
      anchors.centerIn: parent
      spacing: 8
      MyRedSquare { }
      MyDarkSquare { }
      MyGreenSquare { }
      MyBlueSquare { }
    }
  }

  MyBrightSquare {
    id: flowsqure
    width: 160
    height: 160
    x: 12; y: columnsqure.y + columnsqure.height + 20
    Flow {
      anchors.fill: parent
      anchors.margins: 8
      spacing: 8
      MyRedSquare { }
      MyBlueSquare { }
      MyGreenSquare { }
    }
  }

  MyDarkSquare {
    id: repeatersqure
    width: 252
    height: 252
    property variant colorArray: ["#00bde3", "#67c111", "#ea7025"]
    x: flowsqure.x + flowsqure.width + 20; y:flowsqure.y

    Grid{
      anchors.fill: parent
      anchors.margins: 8
      spacing: 4
      //Repeater类似于for循环
      Repeater {
        model: 16
        Rectangle {
          width: 56; height: 56
          property int colorIndex: Math.floor(Math.random()*3)
          color: repeatersqure.colorArray[colorIndex]
          border.color: Qt.lighter(color)
          Text {
            anchors.centerIn: parent
            color: "#f0f0f0"
            text: "Cell " + index
          }
        }
      }
    }
  }
}
