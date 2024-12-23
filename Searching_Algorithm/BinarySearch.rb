

def BinarySearch(arr,target)
  left = 0
  right = arr.length-1

  while(left<right)
    mid = (left + right)/2
    if arr[mid] == target
      return mid
    elsif arr[mid]<target
      left = mid+1
    else
      right = mid
    end
  end
  return left
end



puts "Enter Size of Array"
n = gets.chomp.to_i

arr = []
puts "Enter Elements into Array"

n.times do |elem|
  elem = gets.chomp.to_i
  arr << elem
end

puts "Enter Element which you need to Find"
find = gets.chomp.to_i
index = BinarySearch(arr,find)
puts "Element found at Index : #{index}"
