


#Find Duplicate in an Array
# Given an array of n+1 integers where each integer is in the range [1, n], find the duplicate.
# Hint: Use the Floyd’s Tortoise and Hare (Cycle Detection) algorithm.

#done 
def findDuplicate(arr)
  seen = Set.new

  arr.each do |elem|
    return elem if seen.include?(elem)
    seen.add(elem)
  end
  
end

arr = [1,2,3,4,5,5]
puts "duplicate element: #{findDuplicate(arr)}"

