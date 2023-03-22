import QtQuick 2.14
import QtQuick.Window 2.14

Window {
  visible: true
  width: 900
  height: 600
  Rectangle {
    //自定义组件的文件名必须与组件的名称相同，并且文件名的首字母必须大写
    MyButton {
      id: button
      x: 12; y: 12
      text: "start ..."
      onClicked: {
        status.text = "button clicked!"
      }
    }
    Text {
      id: status
      x: 12; y: 76
      width: 116; height: 26
      text: "waiting ..."
      horizontalAlignment: Text.AlignHCenter
    }
  }
}
