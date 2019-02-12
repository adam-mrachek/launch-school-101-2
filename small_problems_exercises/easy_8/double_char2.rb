def double_consonants(str)
  result = []
  str.chars.each do |char|
    if char =~ /[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/
      result << char * 2
    else
      result << char
    end
  end
  result.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""