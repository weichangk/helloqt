import QtQuick 2.14
import QtQuick.Window 2.14

Window{
  visible: true
  width: root.width
  height: root.height
  Rectangle{
    id: root
    width: 240
    height: 120
    Text{
      id: thisLabel
      x:24; y:16
      // bind height to 2 * width
      height: 2 * width
      // custom property
      property int times: 24
      // property alias
      property alias anotherTimes: thisLabel.times
      text: "greeting " + times
      font.family: "Ubuntu"
      font.pixelSize: 24

      // KeyNavigation is an attached property
      KeyNavigation.tab: otherLabel

      // signal handler for property changes
      onHeightChanged: console.log('height:', height)

      focus: true

      // change color based on focus value
      color: focus?"red":"black"
    }

    Text{
      id: otherLabel
      x:24; y: 64
      text: "other lable"
      font.family: "Ubuntu"
      font.pixelSize: 24
      KeyNavigation.tab: thisLabel
      color: focus?"red":"black"
    }
  }
}
