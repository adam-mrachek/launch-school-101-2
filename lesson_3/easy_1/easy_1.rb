# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# Answer: This will print out 1 2 2 3 because the uniq method creates a new array object 
# and does not mutate the object that number points to.