def diamond(size)
  stars = 1
  until stars > size
    spaces = (size - stars) / 2
    puts "#{' ' * spaces}#{'*' * stars}"
    stars += 2
  end

  stars = size
  until stars <= 1
    stars = stars - 2
    spaces = (size - stars) / 2
    puts "#{' ' * spaces}#{'*' * stars}"
  end
end

diamond(1)
diamond(3)
diamond(9)