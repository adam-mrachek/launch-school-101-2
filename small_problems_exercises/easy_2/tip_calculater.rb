puts "What is the bill?"
bill = gets.chomp.to_i

puts "What is the tip percentage?"
tip_percentage = (gets.chomp.to_f) / 100

puts tip_percentage

tip = bill * tip_percentage

puts "The tip is $#{tip}"
puts "The total is $#{bill + tip}"