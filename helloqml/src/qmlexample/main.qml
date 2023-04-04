import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow{
  visible: true
  width: 1500
  height: 900
  title: "QML例子"
  // color: "white"

  ListModel {
    id: menuModel
    ListElement { text: "Home"; icon: "qrc:/qmlexample/qmlexample/resources/images/home-48.png" }
    ListElement { text: "graphic animation"; icon: "qrc:/qmlexample/qmlexample/resources/images/home-48.png" }
    ListElement { text: "menu"; icon: "qrc:/qmlexample/qmlexample/resources/images/home-48.png" }
  }

  GridLayout {
    id: mainGridLayout
    anchors.fill: parent
    anchors.margins: 8
    columns: 2
    //columnSpacing: 0//默认不是0！

    //左侧菜单
    Rectangle {
      id: menu
      width: 250
      Layout.fillHeight: true
      // radius: 5
      ListView {
        id: menuList
        anchors.fill: parent
        // topMargin: 120
        model: menuModel
        spacing: 5

        delegate: Rectangle {
          width: menuList.width
          height: 40
          radius: 5
          // border.width: 1
          // border.color: "#E0E0E0" //边框

          Gradient {
              id: gradient
              GradientStop { position: 0.0; color: "lightblue" }
              GradientStop { position: 1.0; color: "white" }
          }
          gradient: menuList.currentIndex === index ? gradient : "white"

          Image {
              id: iconImage
              source: model.icon
              width: 24
              height: 24
              anchors.verticalCenter: parent.verticalCenter
              anchors.left: parent.left
              anchors.leftMargin: 10
          }

          Text {
            id: textLabel
            text: model.text
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: iconImage.right
            anchors.leftMargin: 20
            font.pixelSize: 16
            font.bold: menuList.currentIndex === index //选中字体加粗
            color: menuList.currentIndex === index ? "white" : "black" //选中字体颜色
          }

          MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
              menuList.currentIndex = index
              //todo：绑定model text 判断，提取到js文件
              if(menuList.currentIndex === 0)
                myLoader.source = "qrc:/qmlexample/qmlexample/home.qml"
              else if(menuList.currentIndex === 1)
                myLoader.source = "qrc:/qmlexample/qmlexample/graphic animation/main.qml"
              else if(menuList.currentIndex === 2)
                myLoader.source = "qrc:/qmlexample/qmlexample/menu/main.qml"
            }
          }

          //颜色属性发生变化时触发动画，使颜色平滑过渡。
          Behavior on color {
            PropertyAnimation {
              duration: 200
            }
          }
        }

      }
    }

    //主要内容
    Rectangle {
      id: content
      Layout.fillWidth: true
      Layout.fillHeight: true
      // radius: 5
      // color: "black"
      //Loader动态加载组件用于切换页面
      Loader {
        id: myLoader
        anchors.fill: parent
        source: "qrc:/qmlexample/qmlexample/home.qml"
      }
    }

  }
}
