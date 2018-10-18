# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# A: The return value is [1, 2, 3] because the last line in the block 'hi' evaluates to true so every element in the array is selected.