cmake_minimum_required(VERSION 2.6)
project(parameter_config)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -g -Wall -Wno-unused-variable ")

SET(CMAKE_BUILD_TYPE "Release")

Find_library(YAML yaml-cpp)

add_executable(parameter_config
    test.cpp
    parameter_config.h
    parameter_config.cpp
)

target_link_libraries(parameter_config 
    ${YAML})

