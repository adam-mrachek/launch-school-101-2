# Given this code, what would be the final values of a and b? Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

a # => 2 because we don't ever reference a, only arr so we're modifying the arr, but not the variable a
b # => [3, 8] this one *does* change because b is an array and we are modifying the array by assigning a new valueat 0 of the array.
