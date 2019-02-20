def rotate_array(arr)
  arr[1..-1] << arr[0]
end

def rotate_rightmost_digits(number, digits)
  unchanged_digits = number.to_s[0..(-digits - 1)]
  digits_to_rotate = number.to_s[-digits..-1].split('')
  rotated_digits = rotate_array(digits_to_rotate)
  (unchanged_digits + rotated_digits.join('')).to_i
end

def max_rotation(integer)
  digits = integer.to_s.chars
  rotations = digits.size

  while rotations > 1
    integer = rotate_rightmost_digits(integer, rotations)
    rotations -= 1
  end
  
  integer
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845