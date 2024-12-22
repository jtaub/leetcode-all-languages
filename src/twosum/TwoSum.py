def two_sum(nums, target):
    num_map = {}
    for i, num in enumerate(nums):
        complement = target - num
        if complement in num_map:
            return [num_map[complement], i]
        num_map[num] = i
    return []


def main():
    nums = [7, 11, 15, 3, 100, 2]
    target = 9
    result = two_sum(nums, target)
    print(f"Indices of the two numbers that add up to {target}: {result}")

if __name__ == "__main__":
    main()