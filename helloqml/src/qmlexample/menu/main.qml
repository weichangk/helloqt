import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.4

Rectangle {
  width: 1500
  height: 900

  ListModel {
    id: menuModel
    ListElement { text: "Home" }
    ListElement { text: "About" }
    ListElement { text: "Contact" }
  }
  ListModel {
    id: menuModel2
    ListElement { text: "Home"; icon: "qrc:/qmlexample/qmlexample/resources/images/home-48.png" }
    ListElement { text: "About"; icon: "qrc:/qmlexample/qmlexample/resources/images/home-48.png" }
    ListElement { text: "Contact"; icon: "qrc:/qmlexample/qmlexample/resources/images/home-48.png" }
  }

  //普通一级菜单，矩形菜单项，选择改变背景色，默认选中指定项
  Item {
    id: menu1
    width: 200
    height: parent.height

    ListView {
      id: menu1_listView
      anchors.fill: parent
      // model: ["Home", "About", "Contact"]
      model: menuModel
      currentIndex: 1 // 默认选中第二项

      delegate: Rectangle {
        width: menu1_listView.width
        height: 40
        color: menu1_listView.currentIndex === index ? "lightblue" : "white" //选中背景颜色

        Text {
          // text: modelData
          text: model.text
          anchors.centerIn: parent
        }

        MouseArea {
          anchors.fill: parent
          onClicked: menu1_listView.currentIndex = index
        }
      }
    }
  }

  //普通一级菜单，矩形菜单项，选中改变背景色、字体颜色、字体加粗，颜色改变平滑过渡
  Item {
    id: menu2
    x: menu1.x + menu1.width + 10
    width: 200
    height: parent.height

    ListView {
      id: menu2_listView
      anchors.fill: parent
      model: menuModel

      delegate: Rectangle {
        width: menu2_listView.width
        height: 40
        color: menu2_listView.currentIndex === index ? "lightblue" : "white" //选中背景颜色

        Text {
          text: model.text
          anchors.centerIn: parent
          font.bold: menu2_listView.currentIndex === index //选中字体加粗
          color: menu2_listView.currentIndex === index ? "white" : "black" //选中字体颜色
        }

        MouseArea {
          anchors.fill: parent
          onClicked: menu2_listView.currentIndex = index
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

  //普通一级菜单，矩形菜单项，选中改变背景色、字体颜色、字体加粗，颜色改变平滑过渡，菜单项间距、圆角、边框
  Item {
    id: menu3
    x: menu2.x + menu2.width + 10
    width: 200
    height: parent.height

    ListView {
      id: menu3_listView
      anchors.fill: parent
      model: menuModel
      spacing: 5 //菜单项间距

      delegate: Rectangle {
        width: menu3_listView.width
        height: 40
        radius: 5 //圆角
        color: menu3_listView.currentIndex === index ? "lightblue" : "white" //选中背景颜色
        border.width: 1
        border.color: "#E0E0E0" //边框
        Text {
          text: model.text
          anchors.centerIn: parent
          font.bold: menu3_listView.currentIndex === index //选中字体加粗
          color: menu3_listView.currentIndex === index ? "white" : "black" //选中字体颜色
        }

        MouseArea {
          anchors.fill: parent
          onClicked: menu3_listView.currentIndex = index
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

  //普通一级菜单，矩形菜单项，选中背景色纵向渐变、改变字体颜色、字体加粗，颜色改变平滑过渡，菜单项间距、圆角、边框
  Item {
    id: menu4
    x: menu3.x + menu3.width + 10
    width: 200
    height: parent.height

    ListView {
      id: menu4_listView
      anchors.fill: parent
      model: menuModel
      spacing: 5 //菜单项间距

      delegate: Rectangle {
        width: menu4_listView.width
        height: 40
        radius: 5 //圆角
        border.width: 1
        border.color: "#E0E0E0" //边框
        //背景色纵向渐变(6.4.3版本实现横向渐变的方法还没找到！！！)
        Gradient {
            id: gradient
            GradientStop { position: 0.0; color: "lightblue" }
            GradientStop { position: 1.0; color: "white" }
        }
        gradient: menu4_listView.currentIndex === index ? gradient : "white"

        Text {
          text: model.text
          anchors.centerIn: parent
          font.bold: menu4_listView.currentIndex === index //选中字体加粗
          color: menu4_listView.currentIndex === index ? "white" : "black" //选中字体颜色
        }

        MouseArea {
          anchors.fill: parent
          onClicked: menu4_listView.currentIndex = index
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

  //普通一级菜单，带图标，矩形菜单项，选中背景色纵向渐变、改变字体颜色、字体加粗，颜色改变平滑过渡，菜单项间距、圆角、边框
  Item {
    id: menu5
    x: menu4.x + menu4.width + 10
    width: 200
    height: parent.height

    ListView {
      id: menu5_listView
      anchors.fill: parent
      model: menuModel2
      spacing: 5 //菜单项间距

      delegate: Rectangle {
        width: menu5_listView.width
        height: 40
        radius: 5 //圆角
        border.width: 1
        border.color: "#E0E0E0" //边框
        //背景色纵向渐变(6.4.3版本实现横向渐变的方法还没找到！！！)
        Gradient {
            id: gradient
            GradientStop { position: 0.0; color: "lightblue" }
            GradientStop { position: 1.0; color: "white" }
        }
        gradient: menu5_listView.currentIndex === index ? gradient : "white"

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
          font.bold: menu5_listView.currentIndex === index //选中字体加粗
          color: menu5_listView.currentIndex === index ? "white" : "black" //选中字体颜色
        }

        MouseArea {
          anchors.fill: parent
          onClicked: menu5_listView.currentIndex = index
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

}
