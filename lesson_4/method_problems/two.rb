# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# count uses the return value to determine if the element meets the criteria to be counted. If it's true it will be counted.
# the ruby documentation says that when a block is given to count, it counts the number of elements that return a true value.