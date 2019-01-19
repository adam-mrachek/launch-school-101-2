# def crunch(str)
#   previous_char = ''
#   crunched_text = []
#   str.split('').each do |char|
#     crunched_text << char if char != previous_char
#     previous_char = char
#   end
#   crunched_text.join('')
# end

# Regex

def crunch(str)
  str.gsub(/(.)\1{0,}/, '\1')
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
