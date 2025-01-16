bool isAnagram(String s, String t) {
  final counts = List.filled(26, 0);
  final a = 'a'.codeUnitAt(0);

  for (var i = 0; i < s.length; ++i) {
    final c = s.codeUnitAt(i);
    counts[c - a]++;
  }

  for (var i = 0; i < t.length; ++i) {
    final c = s.codeUnitAt(i);
    counts[c - a]--;
  }

  return counts.every((count) => count == 0);
}
