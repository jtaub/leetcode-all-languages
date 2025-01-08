package containsduplicate

import "github.com/emirpasic/gods/sets/hashset"

func containsDuplicate(nums []int) bool {
	seen := hashset.New()

	for _, num := range nums {
		if seen.Contains(num) {
			return true
		}

		seen.Add(num)
	}

	return false
}
