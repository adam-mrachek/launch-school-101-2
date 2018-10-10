# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# Answer: The result of the last line is {a: "hi there"} because informal_greeting points to the same value/string object in the greeting hash. The << operation mutates the object that informal_greeting is pointing to.