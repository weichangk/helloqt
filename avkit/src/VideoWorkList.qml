import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
  id: control
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

  RowLayout {
    anchors.fill: parent
    ListView {
      id: listView
      clip: true
      Layout.fillWidth: true
      Layout.fillHeight: true
      orientation: Qt.Horizontal
      model: menuModel11
      spacing: 8
      // ScrollIndicator.horizontal: CustomHScrollIndicator {}
      // 实现鼠标进入离开checkbox选中三态边框效果
      delegate: Rectangle {
        id: itemRect
        height: listView.height
        width: 120
        color: "transparent"
        border.width: 2
        radius: 4
        state: listView.currentIndex === index ? "SELECTED" : "DEFAULT"
        states: [
          State{
            name: "DEFAULT"
            PropertyChanges {
              itemRect {
                border.color: "TRANSPARENT"
              }
            }
          },
          State{
            name: "SELECTED"
            PropertyChanges {
              itemRect {
                border.color: "#A070FF"
              }
            }
          }
        ]
        Image {
          id: thumbnailImage
          width: parent.width - 4
          height: parent.height - 14
          anchors.verticalCenter: parent.verticalCenter
          anchors.horizontalCenter: parent.horizontalCenter
          source: model.icon
        }

        Rectangle {
          id: itemRectShade
          width: itemRect.width
          height: itemRect.height
          border.width: 2
          color: "transparent"
          radius: 4
          state: "DEFAULT"
          states: [
            State{
              name: "DEFAULT"
              PropertyChanges {
                itemRectShade {
                  border.color: "TRANSPARENT"
                }
              }
            },
            State{
              name: "MOUSOVER"
              PropertyChanges {
                itemRectShade {
                  border.color: "#565658"
                }
              }
            }
          ]
          MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onClicked: {
              listView.currentIndex = index
              itemRectShade.state = "DEFAULT"
            }
            onEntered: {
              itemRectShade.state = listView.currentIndex === index ? "DEFAULT" : "MOUSOVER"
            }
            onExited: {
              itemRectShade.state = itemCheckBox.state === "MOUSOVER" ? "MOUSOVER" : "DEFAULT"
            }
          }
        }

        CustomCheckBox {
          id: itemCheckBox
          textCheckedColor: "#FFFFFF"
          textColor: "#FFFFFF"
          indicatorCheckedColor: "#A070FF"
          indicatorColor: "transparent"
          indicatorBorderCheckedColor: "#A070FF"
          indicatorBorderColor: "#565658"
          anchors.bottom: thumbnailImage.bottom; anchors.left: thumbnailImage.left
          text: model.text
          state: "DEFAULT"
          states: [
            State{
              name: "DEFAULT"
            },
            State{
              name: "MOUSOVER"
            },
            State{
              name: "CHECKED"
              PropertyChanges {
                itemCheckBox {
                  checked: true
                }
              }
            },
            State{
              name: "UNCHECKED"
              PropertyChanges {
                itemCheckBox {
                  checked: false
                }
              }
            }
          ]
          MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onClicked: {
              itemCheckBox.checked = !itemCheckBox.checked
            }
            onEntered: {
              itemCheckBox.state = listView.currentIndex === index ? "DEFAULT" : "MOUSOVER"
            }
            onExited: {
              itemCheckBox.state = "DEFAULT"
            }
          }
        }
      }

    }
    Rectangle {
      width: 34
      Layout.fillHeight: true
      color: "transparent"
      ColumnLayout {
        anchors.fill: parent
        Rectangle {
          Layout.fillWidth: true
          Layout.fillHeight: true
          color: "transparent"
          CustomFourStateImage {
            width: 24
            height: 24
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            source: "qrc:/resources/images/icon24_add_playlist.png"
          }
        }
        Rectangle {
          Layout.fillWidth: true
          Layout.fillHeight: true
          color: "transparent"
          CustomFourStateImage {
            width: 24
            height: 24
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            source: "qrc:/resources/images/icon24_delete.png"
          }
        }
      }

    }
  }
}

