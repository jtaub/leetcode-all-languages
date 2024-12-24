#include <vector>
#include <map>
#include <stdexcept>
#include <utility>

using namespace std;

class Solution {
    public:
    static vector<int> twoSum(const vector<int>& nums, const int target) {
        const auto size = nums.size();
        std::map<int, int> targetToIndex;

        for (auto i = 0; i < size; ++i) {
            const auto complement = target - nums[i];
            if (const auto found = targetToIndex.find(complement); found != targetToIndex.end()) {
                return {found->second, i};
            }

            // Store the current number and its index in the hash table
            targetToIndex[nums[i]] = i;
        }

        throw std::invalid_argument("No solution");
    }
};