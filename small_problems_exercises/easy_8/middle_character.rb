def center_of(str)
  middle = str.size / 2
  if str.size.odd?
    str[middle]
  else
    str[middle - 1] + str[middle]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'