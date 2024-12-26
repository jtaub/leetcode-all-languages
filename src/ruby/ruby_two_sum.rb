# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  num_to_target = {}
  
  nums.each_with_index do |num, i|
    j = num_to_target[num]
    return [j, i] if j
    num_to_target[target - num] = i
  end
  
  raise ArgumentError, "No solution"
end