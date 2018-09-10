def reverse_words(words)
  arr = words.split(' ')
  arr.each { |word| word.reverse! }
  arr.join(" ")
end

p reverse_words('Professional')          # => lanoisseforP
p reverse_words('Walk around the block') # => Walk dnuora the kcolb
p reverse_words('Launch School')         # => hcnuaL loohcS