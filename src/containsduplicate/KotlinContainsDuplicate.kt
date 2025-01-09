package containsduplicate

fun containsDuplicate(nums: IntArray): Boolean {
  val seen = HashSet<Int>(nums.size)
  return !nums.all(seen::add)
}
