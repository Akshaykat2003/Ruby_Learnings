# Bubble Sort
# Description: Repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order.




# def bubbleSort(arr)
#   n = arr.length
#   for i in 0...n
#     for j in 0...n-i-1
#       if arr[j]>arr[j+1]
#         temp = arr[j]
#         arr[j] = arr[j+1]
#         arr[j+1] = temp
#       end
#     end
#   end
#   return arr
# end


def bubbleSort(arr)
  n = arr.length
  (n-1).times do
    for i in 0...n-1
      if arr[i] > arr[i+1]
        arr[i],arr[i+1] = arr[i+1],arr[i]
      end
    end
  end
  return arr
end

arr = [3,2,1,4,5,7]
puts "Before sorting"
puts arr.inspect
bubbleSort(arr)
puts "After sorting "
puts arr.inspect 