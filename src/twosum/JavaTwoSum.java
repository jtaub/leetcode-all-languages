package twosum;

import java.util.HashMap;

public class JavaTwoSum {
    public int[] twoSum(int[] nums, int target) {
        var numToIndex = new HashMap<Integer, Integer>(nums.length);
        
        for (int i = 0; i < nums.length; i++) {
            var num = nums[i];
            var j = numToIndex.get(num);
            
            if (j != null) {
                return new int[]{j, i};
            }

            numToIndex.put(target - num, i);
        }
        
        throw new IllegalArgumentException("No solution");
    }
}