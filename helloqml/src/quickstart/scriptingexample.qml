import QtQuick 2.14
import QtQuick.Window 2.14

Window{
  width: root.width
  height: root.height
  visible: true
  Rectangle{
    id:root
    width: 240
    height: 120
    Text{
      id: label
      x: 24; y:24
      property int spacePresses: 0
      text: "space pressed: " + spacePresses + " times"
      onTextChanged: console.log("text changed to:", text)
      focus: true

      Keys.onSpacePressed:{
        increment()
      }
      Keys.onEscapePressed: {
        spacePresses = 0
      }
      // a JS function
      function increment() {
          spacePresses += 1
      }
    }
  }
}
