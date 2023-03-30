cmake_minimum_required(VERSION 3.5) # CMake install : https://cmake.org/download/
project(helloqml LANGUAGES CXX)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_PREFIX_PATH "d:/Qt/6.4.3/msvc2019_64") # Qt Kit Dir
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(qrc src/helloqml.qrc)
find_package(Qt6 COMPONENTS Widgets Core Quick REQUIRED) # Qt COMPONENTS
aux_source_directory(./src src)
aux_source_directory(./src/qmlbook qmlbook)
aux_source_directory(./src/qmlbook/meetqt5 qmlbook_meetqt5)
aux_source_directory(./src/qmlbook/quickstart qmlbook_quickstart)
# Specify MSVC UTF-8 encoding
add_compile_options("$<$<C_COMPILER_ID:MSVC>:/utf-8>")
add_compile_options("$<$<CXX_COMPILER_ID:MSVC>:/utf-8>")

add_executable(${PROJECT_NAME}
  WIN32 # If you need a terminal for debug, please comment this statement
  ${qrc}
  ${src}
  ${qmlbook}
  ${qmlbook_meetqt5}
  ${qmlbook_quickstart}
)

target_link_libraries(${PROJECT_NAME} PRIVATE Qt6::Widgets Qt6::Quick) # Qt5 Shared Library
