def joinor(arr, delimiter=", ", join_word="or ")
  str = ""
  arr.each_with_index do |element, idx|
    if idx == arr.length - 1
      str << element.to_s
    elsif idx == arr.length - 2
      str << element.to_s + delimiter + join_word + ' '
    else
      str << element.to_s + delimiter
    end
    # p "#{element} is at index #{idx}"
  end
  str
end

p joinor([1, 2, 3, 4], '; ', 'and')