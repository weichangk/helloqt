import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Column {
  id: layout
  anchors.fill: parent
  spacing: 0
  TabBar {
      id: bar
      width: parent.width
      TabButton {
        width: implicitWidth
        text: qsTr("color example")
      }
      TabButton {
        width: implicitWidth
        text: qsTr("image example")
      }
      TabButton {
        width: implicitWidth
        text: qsTr("scale rotation transition example")
      }
  }

  StackLayout {
    width: parent.width
    height: parent.height - bar.height
    currentIndex: bar.currentIndex
    Rectangle {
      id: tab1
      ColorExp{}
    }
    Rectangle {
      id: tab2
      ImageExp{}
    }
    Rectangle {
      id: tab3
      color: "green"
    }
  }
}

