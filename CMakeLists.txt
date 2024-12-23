cmake_minimum_required(VERSION 3.10)
project(leetcode16ways C)

# At the time of writing, LeetCode uses the c11 standard
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_EXTENSIONS ON)

include_directories(/usr/local/include)

add_executable(leetcode16ways main.c)