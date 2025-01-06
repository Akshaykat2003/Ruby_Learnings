
require 'set'



  def find_common_elements(arr1,arr2)
  set = arr1.to_set

  common_element = []

  arr2.each do |elem|
    if set.include?(elem)
      common_element << elem
    end
  end
  common_element
end



arr1 = ["RAM", "KRISHNA", "SHIV", "GANESH","RAM"]
arr2 = ["KRISHNA", "RAM","RAM"]

result = find_common_elements(arr1, arr2)
puts "Common elements: #{result.inspect}"


