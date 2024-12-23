def two_sum(nums, target)
  num_index = {}
  nums.each_with_index do |num, i|
    complement = target - num
    return [num_index[complement], i] if num_index.key?(complement)
    num_index[num] = i
  end
  []
end

def main
  nums = [2, 7, 11, 15]
  target = 9
  result = two_sum(nums, target)
  if result.nil?
    puts "No solution found"
  else
    puts "Indices: #{result}"
  end
end

main