mod rust_two_sum;

pub fn is_anagram(s: String, t: String) -> bool {
    let mut counts = [0; 26];

    s.bytes().for_each(|c| counts[(c - b'a') as usize] += 1);

    t.bytes().for_each(|c| counts[(c - b'a') as usize] -= 1);

    counts.iter().all(|&c| c == 0)
}
