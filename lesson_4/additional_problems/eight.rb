# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# A: This will print 1, 3. Modifying an array while iterating changes the position of
# elements in the array and/or change the length of the array which will lead to unexpected results.

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# A: this will print 1, 2.