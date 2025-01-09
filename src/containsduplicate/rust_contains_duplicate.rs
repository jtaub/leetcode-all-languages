pub fn contains_duplicate(nums: Vec<i32>) -> bool {
    let mut seen = std::collections::HashSet::with_capacity(nums.len());
    !nums.iter().all(|num| seen.insert(*num))
}
