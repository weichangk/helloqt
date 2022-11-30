cmake_minimum_required(VERSION 3.5) # CMake install : https://cmake.org/download/
project(helloqt LANGUAGES CXX)
find_package(Qt5 COMPONENTS Widgets REQUIRED) # Qt COMPONENTS

set(SRC_DIR "./src")
set(CONTAINERS_DIR "./src/containers")

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_PREFIX_PATH "d:/Qt/5.15.2/mingw81_64") # Qt Kit Dir
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_BUILD_TYPE "Debug")
# 或者
# set(CMAKE_BUILD_TYPE "Release")

# 使用 aux_source_directory 就不需要每一个文件添加到 SOURCES HEADERS UIS
aux_source_directory(./src SRCS)
aux_source_directory(./src/common COMMONS)
aux_source_directory(./src/about ABOUTS)
aux_source_directory(./src/layouts LAYOUTS)
aux_source_directory(./src/containers CONTAINERS)
aux_source_directory(./src/properties PROPRETIES)
aux_source_directory(./src/itemviews ITEMVIEWS)

set(QRC src/helloqt.qrc)
# set(SOURCES
#   ./src/helloqt.cpp
# )
# set(HEADERS
#   ./src/helloqt.h
# )
# set(UIS
#   ./src/helloqt.ui
# )

# Specify MSVC UTF-8 encoding
add_compile_options("$<$<C_COMPILER_ID:MSVC>:/utf-8>")
add_compile_options("$<$<CXX_COMPILER_ID:MSVC>:/utf-8>")

add_executable(${PROJECT_NAME}
  # WIN32 # If you need a terminal for debug, please comment this statement
  ${QRC}
  ${SRCS}
  ${COMMONS}
  ${ABOUTS}
  ${LAYOUTS}
  ${CONTAINERS}
  ${PROPRETIES}
  ${ITEMVIEWS}
)

# Needed to compile against ui and moc generated files
include_directories(${SRC_DIR} ${CONTAINERS_DIR})

target_link_libraries(${PROJECT_NAME} PRIVATE Qt5::Widgets) # Qt5 Shared Library
