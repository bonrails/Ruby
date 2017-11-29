#longest substring without repeating characters

def longsub(str)
  map = {}
  i = 0
  start = 0
  str_chars = str.each_char.to_a
  result = 0
  while i <= str.length
    if !map[str_chars[i]]
      map[str_chars[i]] = i
    else
      result = result > (i-start) ? result : (i-start) # find current longest
      prev_pos = map[str_chars[i]]
      start = prev_pos + 1 # start after the repeated character
      map[str_chars[i]] = i # update the new position for the repeated character
    end
    i += 1
  end
  result
end

p longsub('abcdefgceed')