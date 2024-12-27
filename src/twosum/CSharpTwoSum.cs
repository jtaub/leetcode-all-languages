namespace leetcode16ways.twosum;

public class CSharpTwoSum
{
    public int[] TwoSum(int[] nums, int target)
    {
        var numToIndex = new Dictionary<int, int>(nums.Length);

        for (var i = 0; i < nums.Length; i++)
        {
            var num = nums[i];
            if (numToIndex.TryGetValue(num, out var j))
            {
                return [j, i];
            }
            numToIndex[target - num] = i;
        }

        throw new ArgumentException("No solution");
    }
}