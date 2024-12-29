use std::collections::HashMap;

pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
    let mut num_to_index: HashMap<i32, usize> = 
        HashMap::with_capacity(nums.len());

    nums.iter()
        .enumerate()
        .find_map(|(i, &num)| {
            num_to_index.get(&(num))
                .map(|j| vec![*j as i32, i as i32])
                .or_else(|| {
                    num_to_index.insert(target - num, i);
                    None
                })
        })
        .unwrap()
}
