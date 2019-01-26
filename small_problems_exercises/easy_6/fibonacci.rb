def find_fibonacci_index_by_length(num_of_digits)
  fibonacci_series = [1, 1]

  last_fib = 0
  loop do
    new_fib = 0

    new_fib += fibonacci_series[-1]
    new_fib += fibonacci_series[-2]

    fibonacci_series << new_fib

    last_fib = new_fib

    break if last_fib.digits.count >= num_of_digits
  end
  fibonacci_series.index(last_fib) + 1
end

p find_fibonacci_index_by_length(2) # == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) # == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) # == 45
p find_fibonacci_index_by_length(100) # == 476
p find_fibonacci_index_by_length(1000) # == 4782
# p find_fibonacci_index_by_length(10000) # == 47847
