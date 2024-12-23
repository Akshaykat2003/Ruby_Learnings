

# 2. Questions
# Sort an Array of 0s, 1s, and 2s (Dutch National Flag Problem)
# Given an array containing only 0s, 1s, and 2s, sort it in-place without using any sorting library or extra space.
# Hint: Use three pointers (low, mid, high).



def sortArray(arr)
  low = 0
  mid = 0
  high = arr.length-1

  while(mid<=high)
    case arr[mid]
    when 0
      arr[mid],arr[low]=arr[low],arr[mid]
      low+=1
      mid+=1
    when 1
      mid+=1
    when 2
      arr[mid],arr[high] = arr[high],arr[mid]
      high-=1
    end
  end
   return arr
end

arr =[0,1,0,2,0,1,2,0]
puts "Before Sorting"
puts arr.inspect
sortArray(arr)
puts "After Sorting"
puts arr.inspect
