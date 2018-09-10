def oddities(arr)
  odd_array = []
  arr.each_index do |i|
    odd_array << arr[i] if i.even?
  end
  odd_array
end

p oddities([2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])