# How could the unnecessary duplication in this method be removed?

# def color_valid(color)
#   if color == "blue" || color == "green"
#     true
#   else
#     false
#   end
# end

# Answer:
def color_valid(color)
  color == 'blue' || color == 'green'
end

puts color_valid('blue')
puts color_valid('green')
puts color_valid('red')