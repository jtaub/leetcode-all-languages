-spec is_anagram(S :: unicode:unicode_binary(), T :: unicode:unicode_binary()) -> boolean().
is_anagram(S, T) ->
    byte_size(S) =:= byte_size(T) 
    andalso [] =:= (unicode:characters_to_list(S) -- unicode:characters_to_list(T)).