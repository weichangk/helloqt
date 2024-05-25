import QtQuick
import QtQuick.Controls

Rectangle {
  id: control
  property alias imageSource: addFileIllustration.source
  property alias descText: addFileDesc.text
  radius: 20

  color: "transparent"
  CustomDashedBox {
    id: dashedBox
  }
  Image {
    id: addFileIllustration
    source: "qrc:/resources/images/illustration160x120_add.png"
    anchors.centerIn: parent
  }
  Text {
    id: addFileDesc
    anchors.top: addFileIllustration.bottom
    anchors.horizontalCenter: parent.horizontalCenter
    color: "#B5BAC1"
    font.pixelSize: 13
    text: qsTr("点击添加或拖动文件到这里")
  }

  state: "DEFAULT"
  states: [
    State{
      name: "DEFAULT"
      PropertyChanges {
        dashedBox {
          strokeColor: '#39394D'
        }
      }
    },
    State{
      name: "MOUSOVER"
      PropertyChanges {
        dashedBox {
          strokeColor: '#A070FF'
        }
      }
    }
  ]

  MouseArea {
    anchors.fill: parent
    hoverEnabled: true
    onEntered: {
      control.state = "MOUSOVER"
    }
    onExited: {
      control.state = "DEFAULT"
    }
  }
}
