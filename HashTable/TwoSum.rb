

def two_sum(arr,target)
  hash = {}
   arr.each_with_index do |elem,index|
    complement = target - elem
     
    if hash.key?(complement)
      return [hash[complement],index]
    end
    hash[elem] = index
   end
   {}
end


nums = [2, 7, 11, 15]
target = 9
puts two_sum(nums, target).inspect

