DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(integer)
  characters = integer.digits.reverse.map { |digit| DIGITS[digit] }

  characters.join('')
end

def signed_integer_to_string(integer)
  if integer < 0
    "-#{integer_to_string(-integer)}"
  else
    integer_to_string(integer)
  end
end

p signed_integer_to_string(4321)
p signed_integer_to_string(-123)
p signed_integer_to_string(0)