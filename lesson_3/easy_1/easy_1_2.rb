# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# Q1: what is != and where should you use it?
# A1: != means 'not equal to' and is used to compare two objects. If the objects are not equal, it will return True.

# Q2: put ! before something, like !user_name
# A2: Putting ! before something means "not-user_name" - it turns the object into the opposite of their boolean equivalent. 

# Q3: put ! after something, like words.uniq!
# A3: Putting ! after something is an indicator that the method will mutate the caller instead of creating a new object.

# Q4: put ? before something
# A4: The ? before something is used in ternary operators.

# Q5: put ? after something
# A5: A ? after something is a code style convention that indicates the method returns a boolean.

# Q6: put !! before something, like !!user_name
# A6: A !! before some object is used to turn an object into their boolean equivalent.