cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_STANDARD 17)

project(cde)

add_library(randomizer
  include/randomizer.hpp
  src/randomizer.cpp
)

target_include_directories(
  randomizer
  PUBLIC
    "include"
)

add_executable(cde
  src/main.cpp
)
target_link_libraries(cde randomizer)

add_executable(test
  src/randomizer_test.cpp
)
target_link_libraries(test pthread randomizer gtest gtest_main)