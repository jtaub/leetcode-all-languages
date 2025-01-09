-spec contains_duplicate(Nums :: [integer()]) -> boolean().
contains_duplicate(Nums) ->
  contains_duplicate(sets:new([{version, 2}, {type, hash}]), Nums).

contains_duplicate(_, []) -> false;
contains_duplicate(Seen, [Num | Tail]) ->
  sets:is_element(Num, Seen) orelse
    contains_duplicate(sets:add_element(Num, Seen), Tail).
