package validanagram

fun isAnagram(s: String, t: String): Boolean {
  val counts = IntArray(26)

  for (c in s) {
    counts[c - 'a']++
  }
  
  for (c in t) {
    counts[c - 'a']--
  }
  
  return counts.all { it == 0 }
}

fun isAnagramGroupBy(s: String, t: String) =
  s.groupBy { it } == t.groupBy { it }