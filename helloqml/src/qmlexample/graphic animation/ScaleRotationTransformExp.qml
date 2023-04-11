import QtQuick
import QtQuick.Layouts

GridLayout {
  id: layout
  anchors.fill: parent
  anchors.margins: 8
  columns: 5
  rows: 3

  Rectangle {
    id: rect1
    width: 300
    Layout.fillHeight: true
    color: "grey"
    Rectangle {
      color: "red"
        x: 25; y: 25; width: 25; height: 25
        scale: 1.6
        // 默认缩放原点为原始图片中心
        // transformOrigin: "Center"
        transformOrigin: "TopLeft"
    }
  }
  Rectangle {
    id: rect2
    width: 300
    Layout.fillHeight: true
    color: "grey"
    Rectangle {
      color: "red"
      x: 25;  y:25; width:50; height:50
      rotation: 30//顺时针旋转30°
    }
  }
  //如果使用scale、rotation简单变换满足不了需求
  //则可以使用transform属性，可用的tranform类型有rotation、scale和translate分别进行旋转缩放平移
  //定点坐标轴axis.x axis.y axis.z代表xyz轴，可实现3d效果
  //原点坐标轴origin.x origin.y ，对于简单的2d不需要指定定点坐标，3d效果需要指定原点坐标和定点坐标
  //angle旋转角度
  Rectangle {
    id: rect3
    width: 300
    Layout.fillHeight: true
    color: "grey"
    Rectangle {
      Column {
        spacing: 10
        Image{
          source: "qrc:/qmlexample/qmlexample/resources/images/qtlogo.png"
        }
        Image{
          source: "qrc:/qmlexample/qmlexample/resources/images/qtlogo.png"
          transform: Rotation {
            origin.x: 30; origin.y:30;
            axis{x:1; y:0; z:0}
            angle: 72
          }
        }
        Image{
          source: "qrc:/qmlexample/qmlexample/resources/images/qtlogo.png"
          transform: Scale{
            origin.x:0; origin.y:0
            xScale: 2
          }
        }
        Item{
          width: 250; height:150
          Image{
            source: "qrc:/qmlexample/qmlexample/resources/images/qtlogo.png"
          }
          Image{
            source: "qrc:/qmlexample/qmlexample/resources/images/qtlogo.png"
            transform: Translate{
              x:120; y:50
            }
          }
        }
      }
    }
  }
}
