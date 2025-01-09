defmodule Solution do
  @spec contains_duplicate(nums :: [integer]) :: boolean
  def contains_duplicate(nums) do
    go(nums, MapSet.new())
  end
  
  defp go([], _), do: false
  defp go([num | tail], seen), do: 
    MapSet.member?(seen, num) or go(tail, MapSet.put(seen, num))
end