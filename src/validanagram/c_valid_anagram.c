bool isAnagram(char* s, char* t) {
  int counts[26] = {};

  for (int i = 0; s[i] != '\0'; i++) {
    counts[s[i] - 'a']++;
  }

  for (int i = 0; t[i] != '\0'; i++) {
    counts[t[i] - 'a']--;
  }

  for (int i = 0; i < 26; i++) {
    if (counts[i] != 0) {
      return false;
    }
  }

  return true;
}
