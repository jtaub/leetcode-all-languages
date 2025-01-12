pub fn contains_duplicate(nums: Vec<i32>) -> bool {
    let mut seen = std::collections::HashSet::with_capacity(nums.len());
    !nums.iter().all(|num| seen.insert(*num))
}

pub fn contains_duplicate_sorting(mut nums: Vec<i32>) -> bool {
    nums.sort_unstable();
    nums.windows(2).any(|window| window[0] == window[1])
}
