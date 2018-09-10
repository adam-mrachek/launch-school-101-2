def short_long_short(arg1, arg2)
  if arg1.length > arg2.length
    "#{arg2}#{arg1}#{arg2}"
  else
    "#{arg1}#{arg2}#{arg1}"
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
