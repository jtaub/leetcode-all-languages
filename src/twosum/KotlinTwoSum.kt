package twosum

fun twoSum(nums: IntArray, target: Int): IntArray {
    // Map from required value to the index which needs that value
    val numToIndex = HashMap<Int, Int>(nums.size)

    nums.forEachIndexed { i, num ->
        val j = numToIndex[num]

        if (j != null) {
            return intArrayOf(j, i)
        }

        numToIndex[target - num] = i
    }

    error("No solution")
}