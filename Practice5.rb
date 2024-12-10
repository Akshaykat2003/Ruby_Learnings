#Create a method in Ruby that takes an array of strings and a string as input. 
#The method should return the index of the string in the array and exit immediately if a match is found. If no match is found, return -1.


def checkIndex(arr,find)
for i in 0...arr.length
  if arr[i] == find
    return i
  end
end
-1
end


puts "Enter a size of array"
n = gets.to_i

arr =[]
n.times do |element|
  element = gets.chomp
  arr << element
end

puts "Enter a String to find"
find = gets.chomp

answer = checkIndex(arr, find)
if answer == -1
  puts "String not found in the array."
else
  puts "String found at index: #{answer}"
end
