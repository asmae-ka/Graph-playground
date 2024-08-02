cmake_minimum_required(VERSION 3.1)

set(PROJECT_VERSION_MAJOR "1")
set(PROJECT_VERSION_MINOR "1")
set(PROJECT_VERSION_PATCH "0")
set(PROJECT_VERSION "${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")
project(Graph-playground VERSION ${PROJECT_VERSION} LANGUAGES CXX)

include(FeatureSummary)
include(GNUInstallDirs)

# For Qt's sake
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt5 CONFIG REQUIRED COMPONENTS Core Widgets Qml Quick QuickCompiler)

file(GLOB SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp
)

add_executable(Graph-playground
    ${SRCS}
    app.qrc
)

target_link_libraries(Graph-playground
    PRIVATE
    Qt5::Widgets
    Qt5::Qml)

feature_summary(WHAT ALL FATAL_ON_MISSING_REQUIRED_PACKAGES)
