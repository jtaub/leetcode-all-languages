package validanagram;

public class JavaValidAnagram {
  public boolean isAnagram(String s, String t) {
    var counts = new int[26];

    for (int i = 0; i < s.length(); i++) {
      counts[s.charAt(i) - 'a']++;
    }
    
    for (int i = 0; i < t.length(); i++) {
      counts[t.charAt(i) - 'a']--;
    }
    
    // Using Arrays.stream here resulted in a performance hit
    for (int count : counts) {
      if (count != 0) {
        return false;
      }
    }
    
    return true;
  }
}
