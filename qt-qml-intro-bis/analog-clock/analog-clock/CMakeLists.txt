cmake_minimum_required(VERSION 3.16)

project(analog-clock VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTORCC ON) # use of qt resource system, the qrc files
set(CMAKE_AUTOUIC ON) # building of the qt designer UI, UIC tool

set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appanalog-clock
    main.cpp
)

qt_add_qml_module(appanalog-clock
    URI analog-clock
    VERSION 1.0
    QML_FILES main.qml

    RESOURCES
        me.jpg images
)

set_target_properties(appanalog-clock PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appanalog-clock
    PRIVATE Qt6::Quick)

install(TARGETS appanalog-clock
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
