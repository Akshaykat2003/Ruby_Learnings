
# Maximum Subarray (Kadane’s Algorithm)
# Find the contiguous subarray with the maximum sum.



def maxSubArraySum(nums)
   maxSoFar = nums[0]
   currMax= nums[0]

   for i in 1...nums.length
    currMax = [nums[i],nums[i]+currMax].max
    maxSoFar = [currMax , maxSoFar].max
   end
   return maxSoFar
end


arr = [-2,-5,6,-2,-3,1,5,-6]

puts "MaxSubbArray Sum : #{maxSubArraySum(arr)}"