def find_first_and_last(nums, target)
  first = find_first(nums, target)
  last = find_last(nums, target)
   return [first, last]
end

def find_first(nums, target)
  low  = 0
  high = nums.length-1
  while (low <= high)
    mid = (low + high) / 2
    if nums[mid] < target
      low = mid + 1
    elsif nums[mid] > target
      high = mid - 1
    else

      return mid if mid == 0 || nums[mid - 1] < target
      high = mid - 1
    end
  end
  -1 
end

def find_last(nums, target)
  low=0
  high = nums.length - 1
  while low <= high
    mid = (low + high) / 2
    if nums[mid] < target
      low = mid + 1
    elsif nums[mid] > target
      high = mid - 1
    else
 
      return mid if mid == nums.length - 1 || nums[mid + 1] > target
      low = mid + 1
    end
  end
  -1 
end


nums = [5,7,7,8,8,10]
target = 8
result = find_first_and_last(nums, target)
puts result.inspect 

# target_not_found = 6
# result_not_found = find_first_and_last(nums, target_not_found)
# puts result_not_found.inspect 
