find_package(GTest REQUIRED)

add_executable(test_submodule1_1 submodule1_1_test.cpp)
target_link_libraries(test_submodule1_1 submodule1_1 GTest::GTest GTest::Main)

add_test(NAME Submodule1_1_Test COMMAND test_submodule1_1)