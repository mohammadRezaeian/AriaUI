cmake_minimum_required(VERSION 3.16)

project(AriaGraphical VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appAriaGraphical
    main.cpp
)


qt_add_qml_module(appAriaGraphical
    URI AriaGraphical
    VERSION 1.0
    QML_FILES Main.qml
)


#Defin variable
set(SUFFIX_QML *.qml *qmldir)

#set address qml files
file(GLOB_RECURSE src_files src/ui/${SUFFIX_QML})

#read all files qml
FOREACH(LETTER ${src_files})
  string(REGEX REPLACE "${CMAKE_CURRENT_SOURCE_DIR}/" "" fileList "${LETTER}")
  message(${fileList})
  list(APPEND UI_QML_FILES ${fileList})
ENDFOREACH()


qt_add_qml_module(Ui
    URI Ui
    VERSION 1.0
    QML_FILES ${UI_QML_FILES}
    STATIC
)


set_target_properties(appAriaGraphical PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appAriaGraphical
    PRIVATE Qt6::Quick
    PRIVATE Qt6::Quick Uiplugin
)

install(TARGETS appAriaGraphical
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
