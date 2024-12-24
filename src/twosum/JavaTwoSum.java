package twosum;

import java.util.HashMap;

public class JavaTwoSum {
    public int[] twoSum(int[] nums, int target) {
        var targetToIndex = new HashMap<Integer, Integer>(nums.length);
        
        for (int i = 0; i < nums.length; i++) {
            var num = nums[i];
            var j = targetToIndex.get(num);
            
            if (j != null) {
                return new int[]{j, i};
            }

            var complement = target - num;
            targetToIndex.put(complement, i);
        }
        
        throw new IllegalArgumentException("No solution");
    }
}