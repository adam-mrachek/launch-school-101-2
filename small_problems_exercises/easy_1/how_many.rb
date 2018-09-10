vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(arr)
  elements = {}
  arr.each do |index|
    if elements.has_key?(index)
      elements[index] += 1
    else
      elements[index] = 1
    end
  end
  elements.each do |key, value|
    puts "#{key} => #{value}"
  end
end

count_occurrences(vehicles)