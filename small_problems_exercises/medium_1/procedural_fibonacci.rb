# First Solution

# def fibonacci(number)
#   first = 1
#   second = 1
#   n = 3
#   return 1 if number <= 2

#   while n <= number
#     fibonacci = first + second
#     first = second
#     second = fibonacci
#     n += 1
#   end

#   fibonacci
# end

# Second Solution

def fibonacci(number)
  first, last = [1, 1]
  3.upto(number) do 
    first, last = [last, first + last]
  end

  last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501