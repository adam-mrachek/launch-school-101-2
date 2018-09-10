def stringy(num)
  counter = 1
  string = ""
  until counter > num
    if counter.odd?
      string += "1"
    else
      string += "0"
    end
    counter += 1
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'