defmodule Solution do
  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
  def two_sum(nums, target) do
    go(Map.new(), 0, nums, target)
  end

  defp go(num_to_index, i, remaining_nums, target) do
    [num | tail] = remaining_nums
    case Map.get(num_to_index, num) do
      nil -> go(
        Map.put(num_to_index, target - num, i),
        i + 1,
        tail, 
        target
      )
      j -> [j, i]
    end
  end
end
