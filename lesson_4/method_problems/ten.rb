# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# [1, nil, nil]
# puts num returns nil so anything that is greater than 1 will return nil in the if statement.