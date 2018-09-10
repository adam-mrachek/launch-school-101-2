def century(year)
  if year % 100 == 0
    century = (year / 100).to_s
  else
    century = (year / 100 + 1).to_s
  end

  if century.end_with?("1") && !century.end_with?("11")
    century + "st"
  elsif century.end_with?("2") && !century.end_with?("12")
    century + "nd"
  elsif century.end_with?("3") && !century.end_with?("13")
    century + "rd"
  else
    century + "th"
  end

end

p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)
