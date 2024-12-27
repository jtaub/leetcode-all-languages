function twoSum(nums: number[], target: number): number[] {
    const numToIndex = new Map<number, number>();

    for (let i = 0; i < nums.length; i++) {
        const num = nums[i];
        const j = numToIndex.get(num);

        if (j !== undefined) {
            return [j, i];
        }

        numToIndex.set(target - num, i);
    }

    throw new Error("No solution");
}
