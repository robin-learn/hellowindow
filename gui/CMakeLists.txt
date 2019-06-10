cmake_minimum_required(VERSION 3.14)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

#Configure where to find Qt's header file.
#eg:    message("$ENV{QTDIR5122}")
#       the output is: D:\Qt\5.12.2\msvc2017_64
set(CMAKE_PREFIX_PATH $ENV{QTDIR5122})

find_package(Qt5 COMPONENTS Core Gui Widgets Quick Qml REQUIRED)

set(INCLUDE_DIR include)
set(INCLUDE
        ${INCLUDE_DIR}/mainwindow.h)

set(SOURCE_DIR src)
set(SOURCES
        ${SOURCE_DIR}/main.cpp
        ${SOURCE_DIR}/mainwindow.cpp)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

#[[
set(RESOURCES
        qml.qrc)
#]]

set(QML_DIR qml)
set(QMLS
        ${QML_DIR}/main.qml)

set(FORM_DIR form)
set(FORMS
        ${FORM_DIR}/mainwindowbase.ui)

#qt5_wrap_cpp(HEADERS_MOC ${MOCS})
qt5_wrap_ui(FORMS_UIC ${FORMS})
add_executable(gui ${INCLUDE} ${SOURCES} ${QMLS} ${FORMS_UIC})


target_link_libraries(gui Qt5::Core Qt5::Gui Qt5::Widgets Qt5::Qml Qt5::Quick)

#SET_TARGET_PROPERTIES(gui PROPERTIES FOLDER "App")