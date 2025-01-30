defmodule Solution do
  @spec is_anagram(String.t(), String.t()) :: boolean()
  def is_anagram(s, t) do
    byte_size(s) == byte_size(t) 
    and Enum.empty?(String.to_charlist(s) -- String.to_charlist(t))
  end
end