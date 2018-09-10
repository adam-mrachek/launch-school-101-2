puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

number_of_years = retirement_age - age

puts "It's #{Time.now.year}. You will retire in #{Time.now.year + number_of_years}."
puts "You only have #{number_of_years} years to go!"