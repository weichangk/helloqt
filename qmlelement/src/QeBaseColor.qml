import QtQuick

QtObject {
  property color defaultColor: "#444346"
  property color hoverColor: "#565558"
  property color pressedColor: "#68676A"
  property color checkedColor: "#68676A"
  property color disabledColor: "#444346"
  property color checkedHoverColor: "#68676A"
  property color checkedPressedColor: "#68676A"
  property color checkedDisabledColor: "#68676A"
  //在组件外部单独使用 Color 或 Gradient
  property var defaultGradient: Gradient {}
  property var hoverGradient: Gradient {}
  property var pressedGradient: Gradient {}
  property var checkedGradient: Gradient {}
  property var disabledGradient: Gradient {}
  property var checkedHoverGradient: Gradient {}
  property var checkedPressedGradient: Gradient {}
  property var checkedDisabledGradient: Gradient {}
  property color textDefaultColor: "#FFFFFF"
  property color textHoverColor: "#FFFFFF"
  property color textPressedColor: "#FFFFFF"
  property color textCheckedColor: "#FFFFFF"
  property color textDisabledColor: "#8F8E91"
  property color textCheckedHoverColor: "#FFFFFF"
  property color textCheckedPressedColor: "#FFFFFF"
  property color textCheckedDisabledColor: "#FFFFFF"
}
