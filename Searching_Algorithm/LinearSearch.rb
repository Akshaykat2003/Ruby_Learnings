  #Linear Search
# Description: Iterates through each element in the array until the target value is found.


def searchElement(arr,find)
  for i in 0...arr.length
    if arr[i] == find
      puts "Element Found at Index :#{i}"
      return 
    end
  end
  puts "Element not found"
end



puts "Enter a Size of Array"
n = gets.chomp.to_i

arr = []
puts "Enter elements into Array"
n.times do |elem|
  elem = gets.chomp.to_i
  arr << elem
end

puts "Enter Element Which you need to Find"
find = gets.chomp.to_i
searchElement(arr,find)



