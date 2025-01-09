package containsduplicate

def containsDuplicate(nums: Array[Int]): Boolean =
  val seen = java.util.HashSet[Int](nums.length)
  !nums.forall(seen.add)