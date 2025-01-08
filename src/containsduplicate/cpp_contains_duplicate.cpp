#include <vector>
#include <algorithm>

using namespace std;

class Solution
{
public:
  bool containsDuplicate(vector<int>& nums)
  {
    ranges::sort(nums);
    return ranges::adjacent_find(nums) != nums.end();
  }
};
