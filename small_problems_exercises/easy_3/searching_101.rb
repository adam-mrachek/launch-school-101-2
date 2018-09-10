numbers = []

puts "==> Enter the 1st Number:"
numbers << gets.chomp.to_i

puts "==> Enter the 2nd Number:"
numbers << gets.chomp.to_i

puts "==> Enter the 3rd Number:"
numbers << gets.chomp.to_i

puts "==> Enter the 4th Number:"
numbers << gets.chomp.to_i

puts "==> Enter the 5th Number:"
numbers << gets.chomp.to_i

puts "==> Enter the last Number:"
search_number = gets.chomp.to_i

if numbers.include?(search_number)
  puts "The number #{search_number} appears in #{numbers}."
else
  puts "The number #{search_number} does not appear in #{numbers}."
end
