package main

func twoSum(nums []int, target int) []int {
	numToIndex := make(map[int]int, len(nums))

	for i, num := range nums {
		j, exists := numToIndex[num]
		if exists {
			return []int{j, i}
		}
		numToIndex[target-num] = i
	}

	return nil
}
