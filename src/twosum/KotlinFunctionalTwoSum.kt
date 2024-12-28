package twosum

fun twoSumFunctional(nums: IntArray, target: Int): IntArray {
    val numToIndex = HashMap<Int, Int>(nums.size)

    return nums.withIndex().firstNotNullOf { (i, num) ->
        val j = numToIndex[num]
        numToIndex[target - num] = i
        j?.let { intArrayOf(j, i) }
    }
}