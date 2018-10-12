# Given the array of several numbers below, use an until loop to print each number.

numbers = [7, 9, 13, 25, 28]
counter = 0

until counter == numbers.size
  puts numbers[counter]
  counter += 1
end
