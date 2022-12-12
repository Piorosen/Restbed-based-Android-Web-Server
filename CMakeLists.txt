cmake_minimum_required(VERSION 3.5)

set(CMAKE_TRY_COMPILE_TARGET_TYPE "STATIC_LIBRARY")
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -static-libstdc++ -std=c++14")
SET(CMAKE_CXX_COMPILER "aarch64-linux-android21-clang++")
SET(CMAKE_C_COMPILER "aarch64-linux-android21-clang")

project(chacha)

SET(BUILD_SSL OFF CACHE BOOL "disable ssl")
SET(BUILD_TESTS OFF CACHE BOOL "disable tests")

add_subdirectory(3rdparty/restbed)
include_directories(3rdparty/restbed/source)

add_executable(chacha
    main.cpp
)

target_link_libraries(chacha restbed-static)
