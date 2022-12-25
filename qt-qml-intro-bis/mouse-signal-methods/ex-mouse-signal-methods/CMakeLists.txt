cmake_minimum_required(VERSION 3.16)

project(ex-mouse-signal-methods VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appex-mouse-signal-methods
    main.cpp
)

qt_add_qml_module(appex-mouse-signal-methods
    URI ex-mouse-signal-methods
    VERSION 1.0
    QML_FILES main.qml 
)

set_target_properties(appex-mouse-signal-methods PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appex-mouse-signal-methods
    PRIVATE Qt6::Quick)

install(TARGETS appex-mouse-signal-methods
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
