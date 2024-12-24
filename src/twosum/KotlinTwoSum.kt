package twosum

fun twoSum(nums: IntArray, target: Int): IntArray {
    // Map from required value to the index which needs that value
    val num_to_index = HashMap<Int, Int>(nums.size)
    
    // todo
    nums.indices.first { i -> 
        val num = nums[i]
        num_to_index[target - num] = i
        num in num_to_index
    }
    
    val j = num_to_index[i]
    return intArrayOf(j, i)
}