/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
const twoSum = function (nums, target) {
    const numToIndex = new Map();

    for (let [i, num] of nums.entries()) {
        const j = numToIndex.get(num);

        if (j !== undefined) {
            return [j, i];
        }

        numToIndex.set(target - num, i);
    }

    throw new Error("No solution");
};