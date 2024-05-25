// pragma Singleton
import QtQuick
import QtQuick.Controls

Rectangle {
  id: videoFunc
  anchors.fill: parent
  // anchors.margins: 5

  color: "green"

  property int count: 0;

  Text {
    id: mytext
    text: "MyFiles"
    anchors.centerIn: parent
    color: "#FFFFFF"
  }

  MouseArea {
    anchors.fill: parent
    onClicked: {
      count += 1
      console.log("MyFiles MyFiles" + count)
      // mytext.text: "MyFiles MyFiles"
    }
  }
}
