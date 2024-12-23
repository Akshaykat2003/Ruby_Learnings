#In Ruby, you can use the built-in method index (or its alias find_index)
# to find the index of the first occurrence of a specific element in an array.

arr = [1,2,3,4,5,6,7]


arr.each_with_index do |elem,index|
puts "Element #{elem} is found at #{index}"
end

newArr = arr.select {|elem| elem.even?}
puts newArr.inspect


# puts arr.index(7)
# puts arr.find_index(7)

# index / find_index:
# Returns the index of the first occurrence of a specified element in an array. Returns nil if the element is not found.

# each_with_index:
# Iterates over an array, providing both the element and its index to a block. Useful for accessing both values simultaneously.

# select:
# Filters elements from an array based on a condition specified in a block and returns a new array containing the matching elements.