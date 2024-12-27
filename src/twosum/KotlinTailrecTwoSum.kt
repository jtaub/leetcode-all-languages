package twosum

fun twoSumTailrec(nums: IntArray, target: Int): IntArray {
    val numToIndex = HashMap<Int, Int>(nums.size)

    tailrec fun go(i: Int): IntArray =
        when (val j = numToIndex[nums[i]]) {
            null -> {
                numToIndex[target - nums[i]] = i
                go(i + 1)
            }
            else -> intArrayOf(j, i)
        }

    return go(0)
}