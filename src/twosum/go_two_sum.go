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

func main() {
	// Test cases
	nums1 := []int{2, 7, 11, 15}
	target1 := 9
	result1 := twoSum(nums1, target1)
	if result1 != nil {
		println("Test case 1 passed:", result1[0], result1[1])
	} else {
		println("Test case 1 failed: No solution found")
	}

	nums2 := []int{3, 2, 4}
	target2 := 6
	result2 := twoSum(nums2, target2)
	if result2 != nil {
		println("Test case 2 passed:", result2[0], result2[1])
	} else {
		println("Test case 2 failed: No solution found")
	}

	nums3 := []int{3, 3}
	target3 := 6
	result3 := twoSum(nums3, target3)
	if result3 != nil {
		println("Test case 3 passed:", result3[0], result3[1])
	} else {
		println("Test case 3 failed: No solution found")
	}

	nums4 := []int{1, 2, 3, 4, 5}
	target4 := 10
	result4 := twoSum(nums4, target4)
	if result4 != nil {
		println("Test case 4 failed: Unexpected solution found")
	} else {
		println("Test case 4 passed: No solution expected")
	}
}
