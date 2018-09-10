def sum(num)
  total = 0
  i = 1
  until i > num
    total+=i
    i+=1
  end
  total
end

def product(num)
  total = 1
  i = 1
  until i > num
    total*=i
    i+=1
  end
  total
end

puts "Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts "======================================="

puts "Enter 's' to compute the sum, 'p' to compute the product:"
choice = gets.chomp

if choice == 's'
  puts "The sum of the integers between 1 and #{number} is #{sum(number)}."
elsif choice == 'p'
  puts "The product of the integers between 1 and #{number} is #{product(number)}."
end