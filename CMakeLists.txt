cmake_minimum_required(VERSION 3.10)
project(submodule1.1)

# Add source directory
add_subdirectory(src)

# Add tests
enable_testing()
add_subdirectory(tests)