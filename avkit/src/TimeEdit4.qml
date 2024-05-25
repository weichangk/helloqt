import QtQuick
import QtQuick.Controls

Rectangle {
  id: control
  color: "transparent"
  Row {
    spacing: 2
    CustomTextField {
      width: 36
      bgImplicitWidth: 36
      bgImplicitHeight: 25
      horizontalAlignment: Text.AlignHCenter
      verticalAlignment: Text.AlignVCenter
      color: "#B5BAC1"
      text: qsTr("00")
    }
    Column {
      CustomFourStateImage {
        width: 16
        height: 12
        source: "qrc:/resources/images/input12_split_right_up.png"
      }
      CustomFourStateImage {
        width: 16
        height: 12
        source: "qrc:/resources/images/input12_split_right_down.png"
      }
    }

    Text {
      width: 3
    }

    CustomTextField {
      width: 36
      bgImplicitWidth: 36
      bgImplicitHeight: 25
      horizontalAlignment: Text.AlignHCenter
      verticalAlignment: Text.AlignVCenter
      color: "#B5BAC1"
      text: qsTr("00")
    }
    Column {
      CustomFourStateImage {
        width: 16
        height: 12
        source: "qrc:/resources/images/input12_split_right_up.png"
      }
      CustomFourStateImage {
        width: 16
        height: 12
        source: "qrc:/resources/images/input12_split_right_down.png"
      }
    }

    Text {
      width: 3
    }

    CustomTextField {
      width: 36
      bgImplicitWidth: 36
      bgImplicitHeight: 25
      horizontalAlignment: Text.AlignHCenter
      verticalAlignment: Text.AlignVCenter
      color: "#B5BAC1"
      text: qsTr("00")
    }
    Column {
      CustomFourStateImage {
        width: 16
        height: 12
        source: "qrc:/resources/images/input12_split_right_up.png"
      }
      CustomFourStateImage {
        width: 16
        height: 12
        source: "qrc:/resources/images/input12_split_right_down.png"
      }
    }

    Text {
      width: 3
    }

    CustomTextField {
      width: 36
      bgImplicitWidth: 36
      bgImplicitHeight: 25
      horizontalAlignment: Text.AlignHCenter
      verticalAlignment: Text.AlignVCenter
      color: "#B5BAC1"
      text: qsTr("00")
    }
    Column {
      CustomFourStateImage {
        width: 16
        height: 12
        source: "qrc:/resources/images/input12_split_right_up.png"
      }
      CustomFourStateImage {
        width: 16
        height: 12
        source: "qrc:/resources/images/input12_split_right_down.png"
      }
    }
  }
}
