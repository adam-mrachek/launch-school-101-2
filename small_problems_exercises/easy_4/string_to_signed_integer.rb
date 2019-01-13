DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

# **FIRST ATTEMPT**
# def string_to_signed_integer(str)
#   if str.start_with?('-') || str.start_with?('+')
#     sign = str.slice!(0)
#   end

#   digits = str.chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = 10 * value + digit }

#   if sign == '-'
#     value *= -1
#   end
#   value
# end

def string_to_integer(str)
  digits = str.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(str)
  case str[0]
  when '-' then -string_to_integer(str[1..-1])
  when '+' then string_to_integer(str[1..-1])
  else          string_to_integer(str)
  end
end

p string_to_signed_integer('345')
p string_to_signed_integer('-1234')
p string_to_signed_integer('+789')