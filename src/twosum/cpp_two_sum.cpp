
#include <vector>
#include <unordered_map>
#include <stdexcept>
#include <utility>

// Function to solve the Two Sum problem
vector<int> twoSum(const vector<int>& nums, int target) {
    std::unordered_map<int, int> numMap; // Hash table to store number and its index

    for (int i = 0; i < static_cast<int>(nums.size()); ++i) {
        int complement = target - nums[i];

        // Check if the complement exists in the hash table
        if (numMap.contains(complement)) {
            return {numMap[complement], i};
        }

        // Store the current number and its index in the hash table
        numMap[nums[i]] = i;
    }

    // If no solution is found, throw an exception
    throw std::invalid_argument("No two sum solution");
}

// Example usage
int main() {
    std::vector<int> nums = {2, 7, 11, 15};
    int target = 9;

    try {
        auto [index1, index2] = twoSum(nums, target);
        std::cout << "Indices: " << index1 << ", " << index2 << '\n';
    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << '\n';
    }

    return 0;
}