#include <vector>
#include <map>
#include <stdexcept>
#include <utility>

using namespace std;

class Solution {
    public:
    static vector<int> twoSum(const vector<int>& nums, const int target) {
        const auto size = nums.size();
        std::map<int, int> num_to_index;

        for (auto i = 0; i < size; ++i) {
            const auto complement = target - nums[i];
            if (const auto found = num_to_index.find(complement);
                found != num_to_index.end()
            ) {
                return {found->second, i};
            }

            // Store the current number and its index in the hash table
            num_to_index[nums[i]] = i;
        }

        throw std::invalid_argument("No solution");
    }
};