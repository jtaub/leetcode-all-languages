class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final numToIndex = <int, int>{};
    
    for (final (i, num) in nums.indexed) {
      if (numToIndex[num] case final j?) return [j, i];
      numToIndex[target - num] = i;
    }
    
    throw Exception("No solution");
  }
}
