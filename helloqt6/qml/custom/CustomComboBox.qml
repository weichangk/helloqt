import QtQuick
import QtQuick.Controls

ComboBox {
  id: control
  // model: ["first", "Second", "Third"]
  property alias bgImplicitWidth: bg.implicitWidth
  property alias bgImplicitHeight: bg.implicitHeight

  delegate: ItemDelegate {
    width: control.width
    contentItem: Text {
      text: control.textRole
        ? (Array.isArray(control.model) ? modelData[control.textRole] : model[control.textRole])
        : modelData
      color: "#21be2b"
      font: control.font
      elide: Text.ElideRight
      verticalAlignment: Text.AlignVCenter
    }
    highlighted: control.highlightedIndex === index
  }

  indicator: Canvas {
    id: canvas
    x: control.width - width - control.rightPadding
    y: control.topPadding + (control.availableHeight - height) / 2
    width: 12
    height: 8
    contextType: "2d"

    Connections {
      target: control
      function onPressedChanged() { canvas.requestPaint(); }
    }

    onPaint: {
      context.reset();
      context.moveTo(0, 0);
      context.lineTo(width, 0);
      context.lineTo(width / 2, height);
      context.closePath();
      context.fillStyle = control.pressed ? "#17a81a" : "#B5BAC1";
      context.fill();
    }
  }

  contentItem: Text {
    leftPadding: 0
    rightPadding: control.indicator.width + control.spacing

    text: control.displayText
    font: control.font
    color: control.pressed ? "#17a81a" : "#B5BAC1"
    verticalAlignment: Text.AlignVCenter
    elide: Text.ElideRight
  }

  background: Rectangle {
    id: bg
    implicitWidth: 200
    implicitHeight: 20
    color: "#313338"
    border.color: control.pressed ? "#17a81a" : "#39394D"
    border.width: control.visualFocus ? 2 : 1
    radius: 12
  }

  popup: Popup {
    y: control.height - 1
    width: control.width
    implicitHeight: contentItem.implicitHeight
    padding: 1

    contentItem: ListView {
      clip: true
      implicitHeight: contentHeight
      model: control.popup.visible ? control.delegateModel : null
      currentIndex: control.highlightedIndex

      ScrollIndicator.vertical: ScrollIndicator { }
    }

    background: Rectangle {
      border.color: "#39394D"
      radius: 2
    }
  }
}
