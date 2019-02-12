# def multiply_list(list1, list2)
#   list1.map.with_index { |number, index| number * list2[index] }
# end

# second solution
def multiply_list(list1, list2)
  list1.zip(list2).map { |array| array.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]
