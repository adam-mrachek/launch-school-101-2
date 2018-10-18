# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# The return value will be [1, 2, 3] because puts num returns nil which will evaluate to false.
# reject returns an array for all elements that evaluate to false.