package main

func twoSum(nums []int, target int) []int {
	// Create a map to store the indices of the numbers we have seen so far
	indices := make(map[int]int)

	for i, num := range nums {
		// Calculate the complement needed to reach the target
		complement := target - num

		// Check if the complement exists in the map
		if index, found := indices[complement]; found {
			// Return the indices if we find the complement
			return []int{index, i}
		}

		// Store the current number's index in the map
		indices[num] = i
	}

	// Return nil if no solution is found
	return nil
}
