package twosum

fun twoSum(nums: IntArray, target: Int): IntArray {
    val numToIndex = HashMap<Int, Int>(nums.size)
    
    // Assign the result of this expression to a val named "i"
    nums.indices.first { i -> 
        val num = nums[i]
        numToIndex[target - num] = i
        num in numToIndex
    }
    
    val j = numToIndex[i]
    return intArrayOf(j, i)
}