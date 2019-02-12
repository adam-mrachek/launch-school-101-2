def substrings(str)
  substrings = []
  start_index = 0
  end_index = 0

  while start_index < str.size
    while end_index < str.size
      substrings << str[start_index..end_index]
      end_index += 1
    end
    start_index += 1
    end_index = start_index
  end
  substrings
end

def palindromes(str)
  substrings(str).select do |string|
    string == string.reverse && string.size > 1
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]