package twosum

fun twoSum(nums: IntArray, target: Int): IntArray {
    // Map from required value to the index which needs that value
    val cache = HashMap<Int, Int>(nums.size)

    nums.forEachIndexed { index, value ->
        val other = cache[value]

        if (other != null) {
            return intArrayOf(other, index)
        }

        cache[target - value] = index
    }

    error("No solution")
}