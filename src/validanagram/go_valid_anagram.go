package validanagram

func isAnagram(s string, t string) bool {
	counts := make([]int, 26)

	for _, c := range s {
		counts[c-'a']++
	}

	for _, c := range t {
		counts[c-'a']--
	}

	for _, count := range counts {
		if count != 0 {
			return false
		}
	}
	return true
}

func isAnagramEarlyReturn(s string, t string) bool {
	if len(s) != len(t) {
		return false
	}

	counts := make([]int, 26)

	for _, c := range s {
		counts[c-'a']++
	}

	for _, c := range t {
		if counts[c-'a'] == 0 {
			return false
		}
		counts[c-'a']--
	}

	return true
}

func isAnagramSinglePass(s string, t string) bool {
	if len(s) != len(t) {
		return false
	}

	counts := make([]int, 26)

	for i, c := range s {
		counts[c-'a']++
		counts[t[i]-'a']--
	}

	// This loop requires constant time, because counts is always a fixed size.
	for _, count := range counts {
		if count != 0 {
			return false
		}
	}

	return true
}
