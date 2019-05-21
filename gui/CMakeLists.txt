cmake_minimum_required(VERSION 3.14)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

#Configure where to find Qt's header file.
#eg:    message("$ENV{QTDIR5122}")
#       the output is: D:\Qt\5.12.2\msvc2017_64

set(CMAKE_PREFIX_PATH $ENV{QTDIR5122})

find_package(Qt5 COMPONENTS Core Gui Widgets Quick Qml REQUIRED)

#[[
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include
        ${CMAKE_CURRENT_SOURCE_DIR}/src
        ${CMAKE_CURRENT_BINARY_DIR}
        )
#]]

# AUX_SOURCE_DIRECTORY(${CMAKE_CURRENT_SOURCE_DIR}/src DIR_SRCS)


#FILE(GLOB INCS "include/*.h")
#FILE(GLOB HEADERS "src/*.h")
#SOURCE_GROUP("Header Files" FILES ${INCS} ${HEADERS})

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

add_executable(gui ${INCLUDE} ${SOURCES} ${QMLS} ${FORMS})

#FILE(GLOB MOCS "include/mainwindow.h")
#FILE(GLOB FORMS "form/*.ui")
#SOURCE_GROUP("Form Files" FILES ${FORMS})

#QT5_WRAP_CPP(HEADERS_MOC ${MOCS})
#QT5_WRAP_UI(FORMS_UIC ${FORMS})

#SOURCE_GROUP("Generated Files" FILES ${HEADERS_MOC} ${FORMS_UIC})

#ADD_EXECUTABLE(gui ${DIR_SRCS} ${HEADERS} ${INCS} ${HEADERS_MOC} ${FORMS_UIC})

TARGET_LINK_LIBRARIES(gui Qt5::Widgets Qt5::Core)

SET_TARGET_PROPERTIES(gui PROPERTIES FOLDER "App")