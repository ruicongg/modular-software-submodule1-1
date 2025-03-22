find_package(GTest REQUIRED)

add_executable(test_submodule1.1 submodule1.1_test.cpp)
target_link_libraries(test_submodule1.1 submodule1.1 GTest::GTest GTest::Main)

add_test(NAME Submodule1_1_Test COMMAND test_submodule1.1)