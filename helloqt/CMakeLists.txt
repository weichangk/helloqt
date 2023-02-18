cmake_minimum_required(VERSION 3.5) # CMake install : https://cmake.org/download/
project(helloqt LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_PREFIX_PATH "d:/Qt/5.15.2/msvc2019_64") # Qt Kit Dir
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_BUILD_TYPE "Debug")
# 或者
# set(CMAKE_BUILD_TYPE "Release")
set(qrc src/helloqt.qrc)
# set(sources
#   ./src/helloqt.cpp
# )
# set(headers
#   ./src/helloqt.h
# )
# set(uis
#   ./src/helloqt.ui
# )
set(src_dir "./src")
set(containers_dir "./src/containers")

find_package(Qt5 COMPONENTS Widgets REQUIRED) # Qt COMPONENTS

# 使用 aux_source_directory 就不需要每一个文件添加到 sources headers uis
aux_source_directory(./src srcs)
aux_source_directory(./src/common commons)
aux_source_directory(./src/layouts layouts)
aux_source_directory(./src/containers containers)
aux_source_directory(./src/properties properties)
aux_source_directory(./src/itemviews itemviews)

# Specify MSVC UTF-8 encoding
add_compile_options("$<$<C_COMPILER_ID:MSVC>:/utf-8>")
add_compile_options("$<$<CXX_COMPILER_ID:MSVC>:/utf-8>")

add_executable(${PROJECT_NAME}
  # WIN32 # If you need a terminal for debug, please comment this statement
  ${qrc}
  # ${srcs}
  # ${headers}
  # ${uis}
  ${srcs}
  ${commons}
  ${layouts}
  ${containers}
  ${properties}
  ${itemviews}
)

# Needed to compile against ui and moc generated files
include_directories(${src_dir} ${containers_dir})

target_link_libraries(${PROJECT_NAME} PRIVATE Qt5::Widgets) # Qt5 Shared Library
