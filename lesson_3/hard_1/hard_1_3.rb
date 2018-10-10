# In other practice problems, we have looked at how the scope of variables affects the modification of one "layer" when they are passed to another.

# To drive home the salient aspects of variable scope and modification of one scope by another, consider the following similar sets of code.

# What will be printed by each of these code groups?

# A)

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"     # 'one is: one'
puts "two is: #{two}"     # 'two is: two'
puts "three is: #{three}" # 'three is: three'

# Answer to A: The one, two, and three variables outside of the method are unchanged by the method since the method creates its own variable scope and the = operation assigns the values to a new object.

# B)

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# Answer to B: Same as answer to A.

# C)
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"     # 'one is: two'
puts "two is: #{two}"     # 'two is: three'
puts "three is: #{three}" # 'three is: one'

# Answer to C: gsub! mutates the objects that the variables in mess_with_vars points to so the variables outside the method are changed.
 