def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

greeting = "hello world"
p spin_me(greeting) # "olleh dlrow"

p greeting