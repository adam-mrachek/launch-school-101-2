# In an earlier practice problem we saw that depending on variables to be modified by called methods can be tricky:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# We learned that whether the above "coincidentally" does what we think we wanted "depends" upon what is going on inside the method.

# How can we refactor this practice problem to make the result easier to predict and easier for the next programmer to maintain?
# A: Refactor the method so that it has no side effects (ie. caller not mutated) and explicity return the string and array

def less_tricky_method(string, array)
  string += "rutabaga"
  array += "rutabaga"

  return string, array
end

