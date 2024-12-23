

#Merge sort


def mergeSort(arr)
 if arr.length<=1
  return arr
 end

 mid = arr.length/2

 left_arr = arr[0...mid]
 right_arr = arr[mid..-1]

 leftSorted = mergeSort(left_arr)
 rightSorted = mergeSort(right_arr)

 return sort(leftSorted,rightSorted)
end

def sort(left,right)
  merged = []
  i = 0
  j = 0

  while i<left.length && j<right.length
    if left[i]<right[j]
      merged << left[i]
      i+=1
    else
      merged << right[j]
      j+=1
    end
  end

  while i<left.length
    merged << left[i]
    i+=1

  end

  while j<right.length
    merged << right[j]
    j+=1
  end

  return merged
end


arr = [2,3,1,5,8,6]
mergedArr = mergeSort(arr)
puts "After using merge sort : #{mergedArr}"

