import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

RadiusRectangle {
  id: videoConverterList
  // anchors.fill: parent
  cornersRadius: [0,0,0,10]
  antialiasing: true
  color: "transparent"

  ListModel {
    id: menuModel11
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "Home"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "graphic"; icon: "qrc:/resources/images/thumbnail.jpg" }
    ListElement { text: "animation"; icon: "qrc:/resources/images/thumbnail.jpg" }
  }

  ColumnLayout {
    anchors.fill: parent
    anchors.leftMargin: 10; anchors.topMargin: 10; anchors.rightMargin: 0; anchors.bottomMargin: 10
    Rectangle {
      height: 40
      Layout.fillWidth: true
      anchors.left: parent.left
      anchors.leftMargin: 5
      color: "transparent"
      CustomFourStateImage {
        id: addFileImage
        width: 24
        height: 24
        anchors.verticalCenter: parent.verticalCenter
        source: "qrc:/resources/images/icon24_add_playlist.png"
      }
      CustomFourStateImage {
        id: addFilePathImage
        width: 24
        height: 24
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: addFileImage.right
        anchors.leftMargin: 5
        source: "qrc:/resources/images/icon24_file.png"
      }
      CustomFourStateImage {
        id: delFileImage
        width: 24
        height: 24
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 20
        source: "qrc:/resources/images/icon24_delete.png"
      }
    }
    ListView {
      id: listView
      visible: menuModel11.count > 0 ? true : false
      clip: true
      Layout.fillWidth: true
      Layout.fillHeight: true
      model: menuModel11
      spacing: 8
      ScrollIndicator.vertical: CustomVScrollIndicator {}
      delegate: Rectangle {
        width: listView.width - 12
        anchors.margins: 5
        height: 98
        radius: 10
        antialiasing: true
        color: "#232428"
        RowLayout{
          anchors.fill: parent
          anchors.margins: 8

          Rectangle {
            width: 20
            Layout.fillHeight: true
            color: "transparent"
            CustomCheckBox {
              anchors.verticalCenter: parent.verticalCenter
              // checked: true
            }
          }

          Rectangle {
            width: 120
            Layout.fillHeight: true
            color: "transparent"
            Image {
              id: iconImage
              anchors.fill: parent
              source: model.icon
            }
          }

          ColumnLayout{
            Layout.fillWidth: true
            Layout.fillHeight: true
            Rectangle {
              height: 24
              Layout.fillWidth: true
              color: "transparent"
              Text {
                id: saveFileNameText
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
                color: "#B5BAC1"
                text: "123456789"
              }
              CustomFourStateImage {
                id: saveFileNameImage
                width: 24
                height: 24
                source: "qrc:/resources/images/icon24_edit.png"
                anchors.left: saveFileNameText.right
                anchors.leftMargin: 5
              }
            }

            RowLayout {
              Layout.fillWidth: true
              Layout.fillHeight: true

              GridLayout{
                width: 200
                Layout.fillHeight: true
                columns: 2
                rows: 2
                Rectangle {
                  Layout.fillWidth: true
                  Layout.fillHeight: true
                  color: "transparent"
                  Image {
                    id: videoDecorationImage
                    source: "qrc:/resources/images/icon16_video_decoration.png"
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 10
                  }
                  Text {
                    id: videoDecorationText
                    anchors.left: videoDecorationImage.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 5
                    color: "#B5BAC1"
                    text: "MP4"
                  }
                }
                Rectangle {
                  Layout.fillWidth: true
                  Layout.fillHeight: true
                  color: "transparent"
                  Image {
                    id: resolutionDecorationImage
                    source: "qrc:/resources/images/icon16_resolution_decoration.png"
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 10
                  }
                  Text {
                    id: resolutionDecorationText
                    anchors.left: resolutionDecorationImage.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 5
                    color: "#B5BAC1"
                    text: "1920*1080"
                  }
                }
                Rectangle {
                  Layout.fillWidth: true
                  Layout.fillHeight: true
                  color: "transparent"
                  Image {
                    id: sizeDecorationImage
                    source: "qrc:/resources/images/icon16_size_decoration.png"
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 10
                  }
                  Text {
                    id: sizeDecorationText
                    anchors.left: sizeDecorationImage.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 5
                    color: "#B5BAC1"
                    text: "1024MB"
                  }
                }
                Rectangle {
                  Layout.fillWidth: true
                  Layout.fillHeight: true
                  color: "transparent"
                  Image {
                    id: timeDecorationImage
                    source: "qrc:/resources/images/icon16_time_decoration.png"
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 10
                  }
                  Text {
                    id: timeDecorationText
                    anchors.left: timeDecorationImage.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 5
                    color: "#B5BAC1"
                    text: "58:59"
                  }
                }

              }
              Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "transparent"
                Image {
                  id: arrowDecorationImage
                  source: "qrc:/resources/images/icon32_arrow.png"
                  // anchors.verticalCenter: parent.verticalCenter
                  anchors.horizontalCenter: parent.horizontalCenter
                }
              }
              GridLayout{
                width: 200
                Layout.fillHeight: true
                columns: 2
                rows: 2
                Rectangle {
                  Layout.fillWidth: true
                  Layout.fillHeight: true
                  color: "transparent"
                  Image {
                    id: videoDecorationImage2
                    source: "qrc:/resources/images/icon16_video_decoration.png"
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 10
                  }
                  Text {
                    id: videoDecorationText2
                    anchors.left: videoDecorationImage2.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 5
                    color: "#B5BAC1"
                    text: "MP4"
                  }
                }
                Rectangle {
                  Layout.fillWidth: true
                  Layout.fillHeight: true
                  color: "transparent"
                  Image {
                    id: resolutionDecorationImage2
                    source: "qrc:/resources/images/icon16_resolution_decoration.png"
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 10
                  }
                  Text {
                    id: resolutionDecorationText2
                    anchors.left: resolutionDecorationImage2.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 5
                    color: "#B5BAC1"
                    text: "1920*1080"
                  }
                }
                Rectangle {
                  Layout.fillWidth: true
                  Layout.fillHeight: true
                  color: "transparent"
                  Image {
                    id: sizeDecorationImage2
                    source: "qrc:/resources/images/icon16_size_decoration.png"
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 10
                  }
                  Text {
                    id: sizeDecorationText2
                    anchors.left: sizeDecorationImage2.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 5
                    color: "#B5BAC1"
                    text: "1024MB"
                  }
                }
                Rectangle {
                  Layout.fillWidth: true
                  Layout.fillHeight: true
                  color: "transparent"
                  Image {
                    id: timeDecorationImage2
                    source: "qrc:/resources/images/icon16_time_decoration.png"
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 10
                  }
                  Text {
                    id: timeDecorationText2
                    anchors.left: timeDecorationImage2.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 5
                    color: "#B5BAC1"
                    text: "58:59"
                  }
                }
              }
            }
          }

          Rectangle {
            width: 120
            Layout.fillHeight: true
            color: "transparent"
            ColumnLayout {
              anchors.fill: parent
              Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "transparent"
              }
              Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "transparent"
                Rectangle{
                  id: converterBtn
                  visible: false
                  width: 100
                  height: 30
                  anchors.verticalCenter: parent.verticalCenter
                  anchors.horizontalCenter: parent.horizontalCenter
                  radius: 15
                  color: "transparent"
                  border.width: 1
                  border.color: "#A070FF"
                  Text {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    color: "#B5BAC1"
                    text: qsTr("Converter")
                  }
                }
                RowLayout {
                  id: convertedBtns
                  visible: true
                  anchors.fill: parent
                  anchors.leftMargin: 20; anchors.rightMargin: 20
                  Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color: "transparent"
                    CustomFourStateImage {
                      width: 24
                      height: 24
                      anchors.horizontalCenter: parent.horizontalCenter
                      anchors.verticalCenter: parent.verticalCenter
                      source: "qrc:/resources/images/icon24_player_play.png"
                    }
                  }
                  Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color: "transparent"
                    CustomFourStateImage {
                      width: 24
                      height: 24
                      anchors.horizontalCenter: parent.horizontalCenter
                      anchors.verticalCenter: parent.verticalCenter
                      source: "qrc:/resources/images/icon24_refresh.png"
                    }
                  }
                  Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color: "transparent"
                    CustomFourStateImage {
                      width: 24
                      height: 24
                      anchors.horizontalCenter: parent.horizontalCenter
                      anchors.verticalCenter: parent.verticalCenter
                      source: "qrc:/resources/images/icon24_file.png"
                    }
                  }
                }
              }
              Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "transparent"
                Text {
                  anchors.horizontalCenter: parent.horizontalCenter
                  anchors.verticalCenter: parent.verticalCenter
                  color: "green"
                  text: qsTr("Success")
                }
              }
            }
          }
        }
      }
    }
    Rectangle
    {
      visible: menuModel11.count == 0 ? true : false
      Layout.fillWidth: true
      Layout.fillHeight: true
      color: "transparent"
      AddFileIllustration {
        width: 250; height: 180
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -30
        imageSource: "qrc:/resources/images/illustration160x120_add.png"
        descText: qsTr("点击添加或拖动文件到这里")
      }
    }
    Rectangle {
      height: 40
      Layout.fillWidth: true
      anchors.left: parent.left
      anchors.leftMargin: 8
      color: "transparent"
      CustomCheckBox {
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        text: "Select All"
      }
      Text {
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 25
        color: "#B5BAC1"
        text: qsTr("共计10个文件，已经选中10个")
      }
    }
  }
}

