-spec two_sum(Nums :: [integer()], Target :: integer()) -> [integer()].
two_sum(Nums, Target) ->
  go(#{}, 0, Nums, Target)
.

-spec go(NumToIndex :: #{integer() => integer()}, I :: integer(), Nums :: [integer()], Target :: integer()) -> [integer()].
go(NumToIndex, I, Nums, Target) ->
  [Num|Tail] = Nums,
  case maps:find(Num, NumToIndex) of
    {ok, J}  -> [J, I];
    error -> go(maps:put(Target - Num, I, NumToIndex), I + 1, Tail, Target)
  end
.