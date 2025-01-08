cmake_minimum_required(VERSION 3.10)
project(leetcode16ways C CXX)

# At the time of writing, LeetCode uses the c11 standard
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_EXTENSIONS ON)

# At time of writing, LeetCode uses clang 19 and c23 standard.
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

include_directories(/usr/local/include)
include_directories(/usr/include/clang19)
include_directories(./src)

add_executable(ctwosum main.c)
add_executable(cpptwosum src/twosum/cpp_two_sum.cpp)
add_executable(cppcontainsduplicate src/containsduplicate/cpp_contains_duplicate.cpp)