def xor?(arg1, arg2)
  # return false if arg1 && arg2
  if arg1 == true && arg2 == false
    true
  elsif arg1 == false && arg2 == true
    true
  else
    false
  end
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)