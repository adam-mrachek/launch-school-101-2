# What is the block's return value in the following code? How is it determined? Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# The block's return value will be true or false depending on how num.odd? evaluates since it's the last line in the block.
# This code will return 1 and true because, since only one element has to return true, the block only needs to run once since 1 is odd.