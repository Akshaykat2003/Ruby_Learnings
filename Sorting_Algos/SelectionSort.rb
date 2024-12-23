# Selection Sort
# Description: Divides the list into a sorted and unsorted region, repeatedly selecting the smallest element from the unsorted region.




def selectionSort(arr)
 n = arr.length
 for i in 0...n
  minIndex = i
  for j in (i+1)...n
    if arr[j]<arr[minIndex]
      minIndex = j
    end
  end

  if minIndex!=i
    temp = arr[i]
    arr[i] = arr[minIndex]
    arr[minIndex] = temp 
  end
 end
end


arr =[3,2,4,7,1,6]
puts "Before Sorting"
puts arr.inspect


selectionSort(arr)
puts "After Sorting"
puts arr.inspect






