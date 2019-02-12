def substrings(str)
  substrings = []
  start_index = 0
  end_index = 0

  while start_index < str.size
    while end_index < str.size
      substrings << str[start_index..end_index]
      end_index += 1
    end
    start_index += 1
    end_index = start_index
  end
  substrings
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]