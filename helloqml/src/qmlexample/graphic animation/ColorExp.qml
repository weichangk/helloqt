import QtQuick
import QtQuick.Layouts
import QtQuick.Shapes

GridLayout{
  id: graphicanimationmain
  anchors.fill: parent
  anchors.margins: 8
  columns: 5
  rows: 3

  //颜色-基础
  Rectangle {
    id: rect1
    width: 300
    Layout.fillHeight: true
    Rectangle {
      //使用svg颜色名称
      color: "blue"
      y: 0
      width: parent.width
      height: 30
      Text {
        anchors.centerIn: parent
        text: "01"
      }
    }
    Rectangle {
      //透明
      color: "transparent"
      y: 40
      width: parent.width
      height: 30
      Text {
        anchors.centerIn: parent
        text: "02"
      }
    }
    Rectangle {
      //使用十六进制表示法，3个或者4个（带透明值）十六进制数字表示，格式：#AARRGGBB，AA表示透明值(alpha) 00-FF 00完全透明
      color: "#FFA500"
      y: 80
      width: parent.width
      height: 30
      Text {
        anchors.centerIn: parent
        text: "03"
      }
    }
    Rectangle {
      color: "#AAFFA500"
      y: 120
      width: parent.width
      height: 30
      Text {
        anchors.centerIn: parent
        text: "04"
      }
    }
    Rectangle {
      //rgba(real red, real green, real blue, real alpha)
      //返回具有指定的红色、绿色、蓝色和alpha分量的颜色，所有分量取值都是[0, 1]
      color: Qt.rgba(1, 0, 0, 1)
      y: 160
      width: parent.width
      height: 30
      Text {
        anchors.centerIn: parent
        text: "05"
      }
    }
    Rectangle {
      //hsla(real hue, real saturation, real lightness, real alpha)
      //返回具有指定色调、饱和度、亮度和alpha分量的颜色。所有分量取值都是[0, 1]
      color: Qt.hsla(0.5, 0.5, 0.5, 0.5)
      y: 200
      width: parent.width
      height: 30
      Text {
        anchors.centerIn: parent
        text: "06"
      }
    }
    Rectangle {
      //darker(color baseColor, real factor)
      //返回一个比baseColor更深的颜色
      color: Qt.darker("blue", 1.5)
      y: 240
      width: parent.width
      height: 30
      Text {
        anchors.centerIn: parent
        text: "07"
      }
    }
    Rectangle {
      //lighter(color baseColor, real factor)
      //返回一个比baseColor更亮的颜色
      color: Qt.lighter("blue", 1.5)
      y: 280
      width: parent.width
      height: 30
      Text {
        anchors.centerIn: parent
        text: "08"
      }
    }
    Rectangle {
      //tint(color baseColor, color tintColor)
      //将一种颜色(baseColor)与另一种颜色(tintColor)进行混合。tintColor要求是带透明的颜色，否则他将掩盖baseColor
      color: Qt.tint("blue",  "#55FF0000")
      y: 320
      width: parent.width
      height: 30
      Text {
        anchors.centerIn: parent
        text: "09"
      }
    }
  }

  //颜色-渐变（Gradient）
  //注意：使用渐变比使用纯色和图片填充性能开销更大，只建议在静态项目中使用渐变，建议使用带渐变效果的图片或svg
  Rectangle {
    id: rect2
    width: 300
    Layout.fillHeight: true
    Rectangle {
      y: 0
      width: parent.width
      height: 30
      Text {
        anchors.centerIn: parent
        text: "01"
      }
      gradient: Gradient {
        GradientStop {position: 0.0; color: "red"}
        GradientStop {position: 0.5; color: "yellow"}
        GradientStop {position: 1.0; color: "green"}
      }
    }
    Rectangle {
      y: 40
      width: parent.width
      height: 30
      Text {
        anchors.centerIn: parent
        text: "02"
      }
      gradient: Gradient {
        GradientStop {position: 0.0; color: "red"}
        GradientStop {position: 0.5; color: "yellow"}
        GradientStop {position: 1.0; color: "green"}
        orientation: Gradient.Horizontal//横向渐变
      }
    }
  }

  //颜色-系统调色板（SystemPalette）
  //系统调色版是一类包含了系统标准颜色值的对象，有三组颜色: Active、Inactive、Disabled
  // 调色板属性：
  // alternateBase : color
  // base : color
  // button : color
  // buttonText : color
  // colorGroup : enumeration
  // dark : color
  // highlight : color
  // highlightedText : color
  // light : color
  // mid : color
  // midlight : color
  // placeholderText : color
  // shadow : color
  // text : color
  // window : color
  // windowText : color

  Rectangle {
    id: rect3
    width: 300
    Layout.fillHeight: true
    SystemPalette {id: myPalette1; colorGroup: SystemPalette.Active}
    SystemPalette {id: myPalette2; colorGroup: SystemPalette.Inactive}
    SystemPalette {id: myPalette3; colorGroup: SystemPalette.Disabled}
    Rectangle {
      y: 0
      width: parent.width
      height: 30
      color: myPalette1.window
      Text {
        anchors.centerIn: parent
        text: "01"
        color: myPalette1.windowText
      }
    }
    Rectangle {
      y: 40
      width: parent.width
      height: 30
      color: myPalette2.window
      Text {
        anchors.centerIn: parent
        text: "02"
        color: myPalette2.windowText
      }
    }
    Rectangle {
      y: 80
      width: parent.width
      height: 30
      color: myPalette3.window
      Text {
        anchors.centerIn: parent
        text: "03"
        color: myPalette3.windowText
      }
    }
  }
}
