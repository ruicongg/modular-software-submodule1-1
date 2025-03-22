#include "../src/submodule1_1.h"
#include <gtest/gtest.h>

TEST(Submodule1_1Test, HelloTest) {
    std::string result = hello();
    EXPECT_EQ(result, "Hello from submodule 1_1");
}
