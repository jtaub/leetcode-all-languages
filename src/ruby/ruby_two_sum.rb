# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  num_to_index = {}
  
  nums.each_with_index do |num, i|
    j = num_to_index[num]
    return [j, i] if j
    num_to_index[target - num] = i
  end
  
  raise ArgumentError, "No solution"
end