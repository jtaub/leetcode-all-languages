function typeScriptTwoSum(nums: number[], target: number): number[] {
    const map = new Map<number, number>();

    for (let i = 0; i < nums.length; i++) {
        const complement = target - nums[i];

        if (map.has(complement)) {
            return [map.get(complement)!, i];
        }

        map.set(nums[i], i);
    }

    throw new Error("No two sum solution exists.");
}


export function main() {
    const nums = [2, 7, 11, 15];
    const target = 9;
    try {
        const result = typeScriptTwoSum(nums, target);
        console.log(`Indices: ${result}, Values: [${nums[result[0]]}, ${nums[result[1]]}]`);
    } catch (error: any) {
        console.error(error.toString());
    }
}

main();
