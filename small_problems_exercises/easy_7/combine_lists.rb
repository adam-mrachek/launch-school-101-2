# def interleave(arr1, arr2)
#   merged_array = []
#   index = 0

#   while index < arr1.size
#     merged_array << arr1[index]
#     merged_array << arr2[index]
#     index += 1
#   end

#   merged_array
# end

# second solution
def interleave(arr1, arr2)
  merged_array = []
  arr1.each_with_index do |element, index|
    merged_array << element << arr2[index]
  end
  merged_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']