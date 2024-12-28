function twoSum(nums: number[], target: number): number[] {
    const numToIndex = new Map<number, number>();

    for (let [i, num] of nums.entries()) {
        const j = numToIndex.get(num);

        if (j !== undefined) {
            return [j, i];
        }

        numToIndex.set(target - num, i);
    }

    throw new Error("No solution");
}
