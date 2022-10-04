cmake_minimum_required(VERSION 3.14)

project(LeetCode)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(CMAKE_CXX_FLAGS "-Wall -Werror -stdlib=libc++")

find_package(GTest REQUIRED)

enable_testing()
include(GoogleTest)
include(CTest)

# Tasks
add_subdirectory(tasks/cpp/739)
