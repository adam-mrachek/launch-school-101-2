def rotate_array(arr)
  arr[1..-1] << arr[0]
end

def rotate_rightmost_digits(number, digits)
  unchanged_digits = number.to_s[0..(-digits - 1)]
  digits_to_rotate = number.to_s[-digits..-1].split('')
  rotated_digits = rotate_array(digits_to_rotate)
  (unchanged_digits + rotated_digits.join('')).to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917