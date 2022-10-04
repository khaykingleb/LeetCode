#include "solution.h"
#include <gtest/gtest.h>

TEST(DailyTemperatures, usual_case)
{
    std::vector<uint32_t> result = {1, 1, 4, 2, 1, 1, 0, 0};
    std::vector<uint32_t> answer = DailyTemperatures({73, 74, 75, 71, 69, 72, 76, 73});

    ASSERT_EQ(result.size(), answer.size());

    for (std::size_t i = 0; i < result.size(); ++i)
    {
        EXPECT_EQ(result[i], answer[i]);
    }
}
