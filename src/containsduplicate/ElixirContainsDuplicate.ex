defmodule Solution do
  @spec contains_duplicate(nums :: [integer]) :: boolean
  def contains_duplicate(nums) do
    go(nums, MapSet.new())
  end
  
  defp go([], _), do: false
  defp go([num | tail], seen) do
    case MapSet.member?(seen, num) do
      true -> true
      false -> go(tail, MapSet.put(seen, num)) 
    end
  end
end