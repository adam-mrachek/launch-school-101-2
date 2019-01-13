# FIRST ATTEMPT
# def swap(str)
#   words = str.split(' ')
#   words.map do |word|
#     first_letter = word[0]
#     last_letter = word[-1]
#     word[0] = last_letter
#     word[-1] = first_letter
#   end
#   words.join(' ')
# end

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(str)
  words = str.split(' ').map do |word|
    swap_first_last_characters(word)
  end
  words.join(' ')
end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')