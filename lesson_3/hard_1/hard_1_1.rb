# What do you expect to happen when the greeting variable is referenced in the last line of the code below?

if false
  greeting = “hello world”
end

greeting

# Answer: greeting would be nil since the if statement is truthy and would evaluate to true so greeting would be initialized to nil.