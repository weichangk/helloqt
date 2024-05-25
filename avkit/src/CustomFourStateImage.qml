import QtQuick
import QtQuick.Controls

Image {
  id: image
  fillMode: Image.Tile
  horizontalAlignment: Image.AlignLeft
  verticalAlignment: Image.AlignTop
  state: image.enabled ? "DEFAULT" : "DISENABLED"
  states: [
    State{
      name: "DEFAULT"
      PropertyChanges {
        image {
          sourceClipRect: Qt.rect(0, 0, image.width, image.height)
        }
      }
    },
    State{
      name: "MOUSOVER"
      PropertyChanges {
        image {
          sourceClipRect: Qt.rect(image.width, 0, image.width, image.height)
        }
      }
    },
    State{
      name: "PRESSED"
      PropertyChanges {
        image {
          sourceClipRect: Qt.rect(image.width * 2, 0, image.width, image.height)
        }
      }
    },
    State{
      name: "DISENABLED"
      PropertyChanges {
        image {
          sourceClipRect: Qt.rect(image.width * 3, 0, image.width, image.height)
        }
      }
    }
  ]
  MouseArea {
    anchors.fill: parent
    hoverEnabled: true
    onPressed: {
      image.state = "PRESSED"
    }
    onEntered: {
      image.state = "MOUSOVER"
    }
    onExited: {
      image.state = "DEFAULT"
    }
  }
}
