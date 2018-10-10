# To drive that last one home...let's turn the tables and have the string show a modified output, while the array thwarts the method's efforts to modify the caller's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}" # my_string is "pumpkinrutabagas" because the << operation in the method mutates the original string object.
puts "My array looks like this now: #{my_array}" # my_array is still ['pumpkins'] because the = operation in the method reassigned the array in the method to a new array object.