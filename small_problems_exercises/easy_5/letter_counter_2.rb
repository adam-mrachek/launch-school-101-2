def word_sizes(str)
  words = {}
  str.split(' ').each do |word|
    clean_word = word.gsub(/[^a-zA-Z]/, '')
    words[clean_word.size] += 1 if words.has_key?(clean_word.size)
    words[clean_word.size] = 1 if !words.has_key?(clean_word.size)
  end
  words
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}