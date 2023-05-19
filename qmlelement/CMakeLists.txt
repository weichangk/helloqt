cmake_minimum_required(VERSION 3.16)
project(QmlElementLib VERSION 0.1)
find_package(Qt6 6.5 COMPONENTS Quick REQUIRED)
qt_add_library(QmlElementLib STATIC)
set_target_properties(QmlElementLib PROPERTIES AUTOMOC ON)
target_link_libraries(QmlElementLib PRIVATE Qt6::Quick)

list(APPEND MODULE_QML_FILES
  src/QeBaseColor.qml
  src/QeSlider.qml
)
list(APPEND MODULE_JS_FILES
  src/Helper.js
)

qt_add_qml_module(QmlElementLib
  URI qmlelement
  VERSION 1.0
  RESOURCE_PREFIX /qmlelement
  QML_FILES
    ${MODULE_QML_FILES}
    ${MODULE_JS_FILES}
)
