def factors(number)
  dividend = 1
  divisors = []
  while dividend <= number
    divisors << number / dividend if number % dividend == 0
    dividend += 1
  end
  divisors
end

p factors(36)

# Bonus 1
# What is the purpose of the number % dividend == 0 ?
# A: To check if the number and dividend are evenly divisible to an integer

# Bonus 2
# What is the purpose of the second-to-last line in the method (the divisors before the method's end)?
# A: To return the divisors array as the return value of the method.