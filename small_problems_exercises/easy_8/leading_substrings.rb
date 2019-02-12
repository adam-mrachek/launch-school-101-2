def substrings_at_start(str)
  substrings = []
  index = 0

  while index < str.size
    substrings << str[0..index]
    index += 1
  end
  substrings
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']