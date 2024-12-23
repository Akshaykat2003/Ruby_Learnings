# Merge Two Sorted Arrays
# Given two sorted arrays, merge them into one sorted array without using extra space.





def mergeSort(arr1,m,arr2,n)
  #we have two take pointers for each array which starts at the end of the element
  i = m-1
  j = n-1
  k = m+n-1

  while(i>=0 && j>=0)
    if arr1[i] > arr2[j]
      arr1[k] = arr1[i]
      i-=1
    else
      arr1[k] = arr2[j]
      j-=1
    end
    k-=1
  end

  while j>=0
   arr1[k] = arr2[j]
   j-=1
   k-=1
  end
  return arr1
end


nums1 = [1,2,3,0,0,0]
m = 3 
nums2 = [2,5,6]
 n = 3  

 puts "Array after sorting"
 puts "Merged Array:#{mergeSort(nums1,m,nums2,n)}"