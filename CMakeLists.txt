cmake_minimum_required(VERSION 3.5)

set(CMAKE_TRY_COMPILE_TARGET_TYPE "STATIC_LIBRARY")
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -static-libstdc++ -std=c++14")
SET(CMAKE_CXX_COMPILER "aarch64-linux-android21-clang++")
SET(CMAKE_C_COMPILER "aarch64-linux-android21-clang")

project(chacha)

SET(BUILD_SSL OFF)
SET(BUILD_TESTS OFF)


add_subdirectory(lib/restbed)
include_directories(lib/restbed/source)

add_executable(chacha
main.cpp
)

target_link_libraries(chacha restbed-static)
