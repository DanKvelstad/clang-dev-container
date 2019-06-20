#include <gtest/gtest.h>
#include "randomizer.hpp"

TEST(randomizer, in_bounds)
{
    randomizer uut;
    const auto lower(128);
    const auto upper(256);
    auto value(uut.generate(lower,upper));
    ASSERT_LE(value, upper);
    ASSERT_GE(value, lower);
}