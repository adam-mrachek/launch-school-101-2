# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'} 
# each_with_object returns an object given in its argument, in this case a hash.
# each iteration of the method then adds a key => value pair where the key is the first element of the value string.