public class ValidAnagram
{
  public bool IsAnagram(string s, string t) {
    var counts = new int[26];

    foreach (var c in s)
      counts[c - 'a']++;

    foreach (var c in t)
      counts[c - 'a']--;

    // Much cleaner but slower with LINQ's All method.
    foreach (var count in counts)
      if (count != 0) return false;
    
    return true;
  }
}