def sum(num)
  nums = num.to_s.split('')
  sum = 0
  nums.each { |number| sum += number.to_i }
  sum
end

puts sum(23)
puts sum(496)
puts sum(123_456_789)
