import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
  id: control
  height: 84
  width: 700
  color: "transparent"
  Column {
    id: column
    anchors.fill: control
    spacing: 5

    Column {
      id: sliderLayout
      height: 32
      anchors.left: column.left
      anchors.right: column.right
      anchors.leftMargin: 10; anchors.topMargin: 0; anchors.rightMargin: 10; anchors.bottomMargin: 0
      CustomSlider {
        bgImplicitWidth: sliderLayout.width
        handleImplicitWidth: 12
        handleImplicitHeight: 12
        handleRadius: 6
      }

      Rectangle {
        width: sliderLayout.width
        height: 20
        color: "transparent"
        CustomFourStateImage {
          id: sliderLeftImage
          width: 10
          height: 20
          x: 0 - width
          source: "qrc:/resources/images/slider_mini_left.png"
          MouseArea {
            anchors.fill: sliderLeftImage
            drag.target: sliderLeftImage
            drag.axis: Drag.XAxis
            drag.minimumX: 0 - sliderLeftImage.width
            drag.maximumX: sliderRightImage.x - sliderLeftImage.width
            onPositionChanged: {
              console.log("Current position:", sliderLeftImage.x, sliderLeftImage.y)
            }
          }
        }
        CustomFourStateImage {
          id: sliderRightImage
          width: 10
          height: 20
          x: sliderLayout.width
          source: "qrc:/resources/images/slider_mini_right.png"
          MouseArea {
            anchors.fill: sliderRightImage
            drag.target: sliderRightImage
            drag.axis: Drag.XAxis
            drag.minimumX: sliderLeftImage.x + width
            drag.maximumX: sliderLayout.width
            onPositionChanged: {
              console.log("Current position:", sliderRightImage.x, sliderRightImage.y)
            }
          }
        }
      }
    }

    RowLayout {
      height: 24
      anchors.left: column.left
      anchors.right: column.right
      Text {
        Layout.fillHeight: true
        Layout.fillWidth: true
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "#B5BAC1"
        text: qsTr("00:00:12.25/00:00:59.25")
      }
      Row {
        spacing: 10
        Layout.fillHeight: true
        Layout.fillWidth: true
        LayoutMirroring.enabled: true
        CustomFourStateImage {
          width: 24
          height: 24
          anchors.verticalCenter: parent.verticalCenter
          source: "qrc:/resources/images/icon24_frame_next.png"
        }
        CustomFourStateImage {
          width: 24
          height: 24
          anchors.verticalCenter: parent.verticalCenter
          source: "qrc:/resources/images/icon24_player_play.png"
        }
        CustomFourStateImage {
          width: 24
          height: 24
          anchors.verticalCenter: parent.verticalCenter
          source: "qrc:/resources/images/icon24_frame_previous.png"
        }
      }
    }
  }
}
