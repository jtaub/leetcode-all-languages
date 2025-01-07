#include <vector>
#include <map>
#include <stdexcept>
#include <utility>

using namespace std;

class Solution {
public:
    static vector<int> twoSum(const vector<int> &nums, const int target) {
        std::map<int, int> num_to_index;

        for (auto i = 0; int const &num: nums) {
            if (const auto found = num_to_index.find(num);
                found != num_to_index.end()
            ) {
                return {found->second, i};
            }

            num_to_index[target - num] = i++;
        }

        throw std::invalid_argument("No solution");
    }
};
