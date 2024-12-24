package twosum

fun twoSum(nums: IntArray, target: Int): IntArray {
    // Map from required value to the index which needs that value
    val numToIndex = HashMap<Int, Int>(nums.size)
    
    nums.indices.first { i -> 
        val num = nums[i]
        numToIndex[target - num] = i
        num in numToIndex
    }
    
    val j = numToIndex[i]
    return intArrayOf(j, i)
}