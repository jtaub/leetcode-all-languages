"use strict";
exports.__esModule = true;
exports.main = void 0;
function twoSum(nums, target) {
    var map = new Map();
    for (var i = 0; i < nums.length; i++) {
        var complement = target - nums[i];
        if (map.has(complement)) {
            return [map.get(complement), i];
        }
        map.set(nums[i], i);
    }
    throw new Error("No two sum solution exists.");
}
function main() {
    var nums = [2, 7, 11, 15];
    var target = 9;
    try {
        var result = twoSum(nums, target);
        console.log("Indices: ".concat(result, ", Values: [").concat(nums[result[0]], ", ").concat(nums[result[1]], "]"));
    }
    catch (error) {
        console.error(error.toString());
    }
}
exports.main = main;
main();
