package twosum

fun twoSum(nums: IntArray, target: Int): Pair<Int, Int>? {
    val numMap = HashMap<Int, Int>()
    for ((index, num) in nums.withIndex()) {
        val complement = target - num
        val match = numMap[complement]
        if (match != null) {
            return Pair(match, index)
        }
        numMap[num] = index
    }
    return null
}

fun main(args: Array<String>) {
    val nums = intArrayOf(2, 7, 11, 15)
    val target = 9
    val result = twoSum(nums, target)
    if (result != null) {
        println("Indices: ${result.first}, ${result.second}")
    } else {
        println("No solution found")
    }
}