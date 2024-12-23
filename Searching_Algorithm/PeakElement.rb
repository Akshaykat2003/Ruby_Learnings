# Find the Peak Element
# A peak element is an element that is greater than its neighbors. Find the index of any peak element in an array.
# Hint: Use Binary Search for a logarithmic solution.
# Example: [1, 2, 3, 1] → Output: 2 (index of 3).



def findPeakElement(arr)

  n = arr.length
  left = 0
  right = n-1

  while(left<=right)
    
    mid = (left+right)/2

    if mid>0 && arr[mid]<arr[mid-1]
      right = mid
    elsif mid<n-1 && arr[mid]<arr[mid+1]
      left = mid+1
    else 
      return mid
    end

  end

end

arr = [1,8,1,3,5,6,4]
result=findPeakElement(arr)
puts result


