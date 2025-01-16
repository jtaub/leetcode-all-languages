# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)

  ('a'..'z').each { |char|
    return false if s.count(char) != t.count(char)
  }
  
  true
end