add_library(submodule1.1 submodule1.1.cpp)
target_include_directories(submodule1.1 PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}) 