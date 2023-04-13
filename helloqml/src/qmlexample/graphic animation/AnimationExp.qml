import QtQuick
import QtQuick.Layouts

GridLayout {
  id: layout
  anchors.fill: parent
  anchors.margins: 8
  columns: 4


  // 1.属性动画 PropertyAnimation
  // Inherited By: ColorAnimation, NumberAnimation, RotationAnimation, and Vector3dAnimation
  Rectangle {
    id: rect1
    width: 300
    Layout.fillHeight: true
    Image {
      id: fengche
      width: 300; height:300
      source: "qrc:/qmlexample/qmlexample/resources/images/fengche.png"
      opacity: 0.1
      MouseArea {
        anchors.fill: parent
        onClicked: {
          animationOpacity.start()
          animationRotation.start()
        }
      }
      PropertyAnimation {
        id: animationOpacity
        target: fengche
        properties: "opacity"
        to: 1.0
        duration: 2000
      }
      NumberAnimation {
        id: animationRotation
        target: fengche
        loops: Animation.Infinite//动画循环播放
        properties: "rotation"
        from: 0
        to: 360
        duration: 2000
        easing: { type: Easing.InBack }//缓和曲线
      }
    }
  }

  //使用预定义的目标属性动画 PropertyAnimation on
  Rectangle {
    id: rect2
    width: 300
    Layout.fillHeight: true
    Rectangle{
      id: rect2_rect1;
      width: 100; height: 100
      color: "red"
      PropertyAnimation on x{ to: 100; duration: 3000}
      PropertyAnimation on y{ to: 100; duration: 3000}
      SequentialAnimation on color{
        ColorAnimation{ to: "yellow"; duration: 1000 }
        ColorAnimation{ to: "blue"; duration: 1000 }
      }
    }
  }

  //在状态改变时使用过渡
  Rectangle {
    id: rect3
    width: 300
    Layout.fillHeight: true
    Rectangle{
      id: rect3_rect1;
      width: 100; height: 100
      state: "RELEASED"
      MouseArea {
        anchors.fill: parent
        onPressed: rect3_rect1.state = "PRESSED"
        onReleased: rect3_rect1.state = "RELEASED"
      }
      states: [
        State {
          name: "PRESSED"
          PropertyChanges {
            target: rect3_rect1
            color: "red"
          }
        },
        State {
          name: "RELEASED"
          PropertyChanges {
            target: rect3_rect1
            color: "darkred"
          }
        }
      ]
      transitions: [
        Transition {
          from: "PRESSED"
          to: "RELEASED"
          ColorAnimation {
            target: rect3_rect1; duration: 100
          }
        },
        Transition {
          from: "RELEASED"
          to: "PRESSED"
          ColorAnimation {
            target: rect3_rect1; duration: 100
          }
        }
      ]
    }
  }

  //使用默认的行为（Behavior）动画
  Rectangle {
    id: rect4
    width: 300
    Layout.fillHeight: true

    Rectangle {
      id: ball
      width: 75
      height: 75
      radius: width
      color: "lightsteelblue"

      //实现移动弹性效果
      Behavior on x{
        NumberAnimation {
          id: bouncebehavior
          easing{
            type:Easing.OutElastic
            amplitude: 1.0
            period: 0.5
          }
        }
      }
      Behavior on y{
        animation: bouncebehavior
      }
      Behavior{
        ColorAnimation{ target: ball; duration: 300 }
      }
    }

    MouseArea{
      anchors.fill: parent
      onClicked: {
        ball.color = Qt.tint(ball.color,"#10FF0000")
        ball.x += 20
        ball.y += 20
      }
    }
  }

  //SequentialAnimation中定义的动画是一个接一个地运行，而ParallelAnimation中定义的动画是同时运行的。
  //做为组合开始或停止
  Rectangle {
    id: rect5
    width: 300
    Layout.fillHeight: true

    Rectangle {
      id: banner
      width: 150; height: 100; border.color: "black"
      Column {
        anchors.centerIn: parent
        Text{
          id: code
          text: "Code less."
          opacity: 0.01
        }
        Text {
          id: create
          text: "Create more."
          opacity: 0.01
        }
        Text {
          id: deploy
          text: "Deploy everywhere."
          opacity: 0.01
        }
      }
      MouseArea {
        anchors.fill: parent
        onPressed: {
          playbanner.start()
        }
      }
      // SequentialAnimation
      ParallelAnimation {
        id: playbanner
        running: false
        NumberAnimation {
          target: code
          property: "opacity"
          to: 1.0
          duration: 2000
        }
        NumberAnimation {
          target: create
          property: "opacity"
          to: 1.0
          duration: 2000
        }
        NumberAnimation {
          target: deploy
          property: "opacity"
          to: 1.0
          duration: 2000
        }
      }
    }
  }

}
