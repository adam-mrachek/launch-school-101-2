# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

# ex:

# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

chars = {}

statement.each_char do |char|
  if chars.has_key?(char)
    chars[char] += 1
  else
    chars[char] = 1
  end
end

p chars