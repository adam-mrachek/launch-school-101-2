puts "Please write word or multiple words:"
input = gets.chomp

characters = input.delete(" ").chars.count

puts "There are #{characters} characters in '#{input}'."
