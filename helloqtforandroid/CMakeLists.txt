cmake_minimum_required(VERSION 3.16)

project(helloqtforandroid VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
# set(CMAKE_PREFIX_PATH "D:/Qt/6.2.4/android_x86_64") # Qt Kit Dir
find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(apphelloqtforandroid
    main.cpp
)

qt_add_qml_module(apphelloqtforandroid
    URI helloqtforandroid
    VERSION 1.0
    QML_FILES main.qml
)

set_target_properties(apphelloqtforandroid PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(apphelloqtforandroid
    PRIVATE Qt6::Quick)

#install(TARGETS apphelloqtforandroid
#    BUNDLE DESTINATION .
#    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
#https://stackoverflow.com/questions/14990343/cmake-error-targets-given-no-library-destination-for-shared-library-target
#https://cloud.tencent.com/developer/ask/sof/39725
install(TARGETS apphelloqtforandroid
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib  # <-- Add this line
    COMPONENT library
)
