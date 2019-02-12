def triangle(size)
  stars = 1

  while stars <= size
    puts "#{" " * (size - stars)}#{"*" * stars}"
    stars += 1
  end
end

triangle(5)
triangle(9)
