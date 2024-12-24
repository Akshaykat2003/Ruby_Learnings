# Insertion Sort
# Description: Builds the final sorted array one element at a time by inserting elements into their correct positions.



def insertionSort(arr)
  n= arr.length
  for i in 1...n
    key  = arr[i]
    j=i-1
    while (j>=0 && arr[j]>key)
      arr[j+1] = arr[j]
      j = j-1
    end
    arr[j+1] = key
  end
end

arr = [3,2,4,6,1,9]
insertionSort(arr)
puts arr.inspect
