def generate_uuid
  hex = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f']
  uuid = []
  until uuid.length == 36
    if uuid.length == 8 || uuid.length == 13 || uuid.length == 18 || uuid.length == 23
      uuid << '-'
    else
      uuid << hex.sample
    end
  end
  uuid.join
end

p generate_uuid

# hex = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f']

# p hex.sample