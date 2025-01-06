
def NGE(arr1,arr2)
  map = {}
  stack = []
  (arr2.length-1).downto(0) do |i|
    stack.pop() while !stack.empty?&& stack[-1] <= arr2[i]
    map[arr2[i]] = stack.empty? ? -1 : stack[-1]
    stack.push(arr2[i])
  end
  arr1.map{|num| map[num]}
end

nums1 = [4,1,2]
nums2 = [1,3,4,2]
result =  NGE(nums1,nums2)
puts result.inspect





# def NGE(arr1,arr2)
#   map = {}
#   stack = []
#   (arr2.length-1).downto(0) do |i|
#     stack.pop() while !stack.empty? && stack[-1] <= arr2[i] #pop the element from the stack if it is smaller than the current element
#     map[arr2[i]] = stack.empty? ? -1 : stack[-1]#if there is no element left in stack or the upper condition gets false it map the value to the current element 
#     stack.push(arr2[i]) 
#   end
#   arr1.map{|num| map[num]} #assigning the maping values to the current value in arr1 and returning the new array{4=>-1,1=>3,2=>-1}
# end
