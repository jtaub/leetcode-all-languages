from typing import List


def twoSum(nums: List[int], target: int) -> List[int]:
    num_to_index = {}
    for i, num in enumerate(nums):
        j = num_to_index.get(num)
        if j is not None:
            return [j, i]
        num_to_index[target - num] = i
        
    raise ValueError("No solution")