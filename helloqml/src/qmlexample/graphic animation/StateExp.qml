import QtQuick
import QtQuick.Layouts

GridLayout {
  id: layout
  anchors.fill: parent
  anchors.margins: 8
  columns: 5

  Rectangle {
    id: rect1
    width: 300
    Layout.fillHeight: true
    state: "WARNING"
    Image {
      id: rect1_img1
      anchors.centerIn: parent
    }
    states: [
      State {
        name: "WARNING"
        PropertyChanges {target: rect1; color: "grey"}
        PropertyChanges {target: rect1_img1; source: "qrc:/qmlexample/qmlexample/resources/images/warning.png"}
      },
      State {
        name: "CRITICAL"
        PropertyChanges {target: rect1; color: "green"}
        PropertyChanges {target: rect1_img1; source: "qrc:/qmlexample/qmlexample/resources/images/critical.png"}
      }
    ]
    transitions: [
        Transition {
            from: "WARNING"
            to: "CRITICAL"
            PropertyAnimation { target: rect1_img1; property: "scale"; from: 1; to: 1.5; duration: 1000 }
        },
        Transition {
            from: "CRITICAL"
            to: "WARNING"
            PropertyAnimation { target: rect1_img1; property: "scale"; from: 1.5; to: 1; duration: 1000 }
        }
    ]
  }
  Image {
    id: rect1_switch
    width: 100; height:100
    source: "qrc:/qmlexample/qmlexample/resources/images/switch.png"
    MouseArea {
      anchors.fill: parent
      onClicked: {
        if(rect1.state == "WARNING")
          rect1.state = "CRITICAL"
        else
          rect1.state = "WARNING"
      }
    }
  }

}




