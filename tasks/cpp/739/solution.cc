#include "solution.h"

// Time complexity = O(n)
// Space complexity = O(n), since stack is used

std::vector<uint32_t> DailyTemperatures(const std::vector<uint32_t> &temperatures)
{
    std::vector<uint32_t> answer(temperatures.size(), 0);
    std::stack<uint32_t> stack;

    for (uint32_t i = 0; i < temperatures.size(); ++i)
    {
        while (!stack.empty() && temperatures[i] > temperatures[stack.top()])
        {
            const uint32_t wait_days = i - stack.top();
            answer[stack.top()] = wait_days;
            stack.pop();
        }
        stack.emplace(i);
    }

    return answer;
}
