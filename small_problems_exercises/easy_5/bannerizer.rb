def print_in_box(str)
  width = str.size
  dotted_line = "+#{"-" * (width + 2)}+"
  empty_line = "|#{" " * (width + 2)}|"

  puts dotted_line
  puts empty_line
  puts "| #{str} |"
  puts empty_line
  puts dotted_line
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')