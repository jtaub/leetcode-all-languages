bool containsDuplicate(List<int> nums) {
  final seen = Set<int>();
  return nums.any((num) => !seen.add(num));
}
