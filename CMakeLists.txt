cmake_minimum_required(VERSION 3.14)

project(LeetCode)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

find_package(GTest REQUIRED)

enable_testing()
include(GoogleTest)

# Tasks
# add_subdirectory(tasks/cpp/)
