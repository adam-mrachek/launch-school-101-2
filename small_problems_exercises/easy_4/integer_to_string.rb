DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(integer)
  characters = integer.digits.reverse.map { |digit| DIGITS[digit] }

  characters.join('')
end

p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)