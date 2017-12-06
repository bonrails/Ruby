#longest substring without repeating characters

def longsub(str)

  new_str = str.gsub(/\s+/,""); #remove whitespaces if any
  return 'string is empty' if new_str.empty? # corner case

  map = {}
  i = 0
  start = 0
  str_chars = str.each_char.to_a
  longest_length = 0
  while i <= str.length
    if !map[str_chars[i]]
      map[str_chars[i]] = i
    else
      #longest_length = longest_length > (i-start) ? longest_length : (i-start) # find current longest
      if longest_length > (i-start)
        longest_length= longest_length
        longest_substring = longest_substring
      else
        longest_substring = str[start..(i-1)]
        p longest_substring
        longest_length = (i-start)
      end
      prev_pos = map[str_chars[i]]
      start = prev_pos + 1 # start after the repeated character
      map[str_chars[i]] = i # update the new position for the repeated character
    end
    i += 1
  end
  longest_substring
end

p longsub('abcdcbasss')

