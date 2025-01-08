# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  seen = Set.new
  !nums.all? { |num| seen.add?(num) }
end
