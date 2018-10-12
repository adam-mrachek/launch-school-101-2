# STRINGS

# How would you reference 'grass' from within this string? Try it out in irb.

str = 'The grass is green'

str = [4, 5]

# What do you think would be returned here? Try it out in irb.

  arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
  arr[2, 3]
  arr[2, 3][0]

# str[2, 3] and arr[2, 3] both use alternative syntax for the String#slice and Array#slice methods. It's sytantical sugar.

# ARRAYS

# Array#slice returns a new array when we pass the method a start and length or range.
# However, Array#slice only returns the element when we pass the method only an index as shown below.

arr = [1, 'two', :three, '4']
arr[3, 1] # => ["4"]
arr[3..3] # => ["4"]
arr[3]    # => "4"

# HASHES

hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot' }

hsh['fruit']    # => "apple"
hsh['fruit'][0] # => "a"

# When initializing a hash, the keys must be unique. Try the following code out in irb.

hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot', 'fruit' => 'pear' }

# (irb):1: warning: key :fruit is duplicated and overwritten on line 1
=> {"fruit"=>"pear", "vegetable"=>"carrot"}

# Values, however, *can* be duplicated

hsh = { 'apple' => 'fruit', 'carrot' => 'vegetable', 'pear' => 'fruit' }

# We can access just the keys or just the values from hashes using the #keys and #values methods of Hash.new

country_capitals = { uk: 'London', france: 'Paris', germany: 'Berlin' }
country_capitals.keys
country_capitals.values
country_capitals.values[0]