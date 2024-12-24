package twosum

fun twoSum(nums: IntArray, target: Int): IntArray {
    // Map from required value to the index which needs that value
    val targetToIndex = HashMap<Int, Int>(nums.size)

    nums.forEachIndexed { index, value ->
        val other = targetToIndex[value]

        if (other != null) {
            return intArrayOf(other, index)
        }

        targetToIndex[target - value] = index
    }

    error("No solution")
}