def isAnagram(s: str, t: str) -> bool:
  counts = 26 * [0]
  a = ord('a')
  
  for c in s:
    counts[ord(c) - a] += 1
    
  for c in t:
    counts[ord(c) - a] -= 1
    
  return not any(counts)