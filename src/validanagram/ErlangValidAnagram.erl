-spec is_anagram(S :: unicode:unicode_binary(), T :: unicode:unicode_binary()) -> boolean().
is_anagram(S, T) ->
    Count1 = count_characters(S),
    Count2 = count_characters(T),
    Count1 =:= Count2.

count_characters(Str) ->
    lists:foldl(
        fun(Char, Acc) -> maps:update_with(Char, fun(X) -> X + 1 end, 1, Acc) end,
        #{},
        unicode:characters_to_list(Str)
    ).
