import QtQuick
import QtQuick.Controls

Rectangle {
  id: videoFunc
  anchors.fill: parent
  color: "transparent"

  signal sendVideoFuncItemSig(QtObject item)

  ListModel {
    id: funcModel
    ListElement {
      icon: "qrc:/resources/images/icon40_converter.png"
      uniqueName: "VideoConverter"
      name: "视频转换"
      desc: "xxx"
    }
    ListElement {
      icon: "qrc:/resources/images/icon40_converter.png"
      uniqueName: "VideoCompressor"
      name: "视频压缩"
      desc: "xxx"
    }
    ListElement {
      icon: "qrc:/resources/images/icon40_converter.png"
      uniqueName: "VideoMerge"
      name: "视频合并"
      desc: "xxx"
    }
    ListElement {
      icon: "qrc:/resources/images/icon40_converter.png"
      uniqueName: ""
      name: "视频裁剪"
      desc: "xxx"
    }
    ListElement {
      icon: "qrc:/resources/images/icon40_converter.png"
      uniqueName: ""
      name: "视频剪切"
      desc: "xxx"
    }
    ListElement {
      icon: "qrc:/resources/images/icon40_converter.png"
      uniqueName: ""
      name: "视频水印"
      desc: "xxx"
    }
    ListElement {
      icon: "qrc:/resources/images/icon40_converter.png"
      uniqueName: "VideoToGif"
      name: "GIF动图制作"
      desc: "xxx"
    }
    ListElement {
      icon: "qrc:/resources/images/icon40_converter.png"
      uniqueName: ""
      name: "视频速度"
      desc: "xxx"
    }
    ListElement {
      icon: "qrc:/resources/images/icon40_converter.png"
      uniqueName: ""
      name: "录屏录音"
      desc: "xxx"
    }
    ListElement {
      icon: "qrc:/resources/images/icon40_converter.png"
      uniqueName: ""
      name: "视频特效"
      desc: "xxx"
    }
    ListElement {
      icon: "qrc:/resources/images/icon40_converter.png"
      uniqueName: ""
      name: "视频字幕"
      desc: "xxx"
    }
    ListElement {
      icon: "qrc:/resources/images/icon40_converter.png"
      uniqueName: ""
      name: "视频增强"
      desc: "xxx"
    }
    ListElement {
      icon: "qrc:/resources/images/icon40_converter.png"
      uniqueName: ""
      name: "视频增强"
      desc: "xxx"
    }
  }

  GridView {
    id: videoFuncGridView
    anchors.fill: parent
    model: funcModel
    cellWidth: 205
    cellHeight: 200
    clip: true
    //spacing: 20 //无效，只能在delegate中设置宽高小于cellWidth cellHeight来产生间距
    //anchors.margins: 20
    anchors.leftMargin: 20; anchors.topMargin: 20; anchors.rightMargin: 0; anchors.bottomMargin: 20
    ScrollIndicator.vertical: CustomVScrollIndicator{}
    delegate: Rectangle {
      id: videoFuncItem
      width: videoFuncGridView.cellWidth - 20
      height: videoFuncGridView.cellHeight -20
      // color: "#232428"
      // border.color: "#232428"
      radius: 10
      antialiasing: true
      Image {
        id: videoFuncIcon
        source: icon;
        fillMode: Image.Tile
        horizontalAlignment: Image.AlignLeft
        verticalAlignment: Image.AlignTop
        y:50
        anchors.horizontalCenter: parent.horizontalCenter
        width: 40; height: 40
      }
      Text {
        id: videoFuncName
        text: name
        y:100
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 14
      }
      state: "DEFAULT"
      states: [
        State{
          name: "DEFAULT"
          PropertyChanges {
            videoFuncItem {
              color: "#232428"
            }
            videoFuncName {
              color: "#B5BAC1"
            }
          }
        },
        State{
          name: "MOUSOVER"
          PropertyChanges {
            videoFuncItem {
              color: "#1E1F22"
            }
            videoFuncName {
              color: "#FFFFFF"
            }
          }
        }
      ]
      MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
          sendVideoFuncItemSig(funcModel.get(index))
        }
        onEntered: {
          videoFuncItem.state = "MOUSOVER"
        }
        onExited: {
          videoFuncItem.state = "DEFAULT"
        }
      }
    }
  }
}
