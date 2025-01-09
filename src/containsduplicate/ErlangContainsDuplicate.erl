-spec contains_duplicate(Nums :: [integer()]) -> boolean().
contains_duplicate(Nums) ->
  go(sets:new([{version, 2}, {type, hash}]), Nums).

go(_, []) -> false;
go(Seen, [Num | Tail]) ->
  sets:is_element(Num, Seen) orelse go(sets:add_element(Num, Seen), Tail).
