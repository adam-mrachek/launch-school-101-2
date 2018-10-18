# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# It returns an array [nil, 'bear']
# This is because the first iteration evaluates to nil since 'ant'.size is not greater to 3 and there is nothing returned when the if statement evaluates to false.
# 'bear' is the second item in the array since 'bear'.size is larger than 3 so it was mapped to the return array.