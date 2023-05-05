import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
  id: root
  width: 1064
  height: 678
  visible: true
  StackLayout {
    id: stackLayout
    anchors.fill: parent
    currentIndex: 0
    Rectangle {
      id: tabMain
      color: "transparent"
      MainPage{
        id: mainPage
        Component.onCompleted: {
          // mainPage.videoFuncCom.sendVideoFuncItemSig.connect(onSendVideoFuncItemSig)
        }
        function onSendVideoFuncItemSig(item){
          if(item.uniqueName === "VideoConverter")
            stackLayout.currentIndex = 1
          else if(item.uniqueName === "VideoCompressor")
            stackLayout.currentIndex = 2
        }
      }
    }
    // Rectangle {
    //   id: tabVideoConverter
    //   color: "transparent"
    //   VideoConverterPage{}
    // }
  }
}


