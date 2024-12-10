#1. Write a Ruby program that iterates through an array of numbers. Stop the iteration 
#when a number divisible by 7 is encountered and print the numbers processed until that point.


array = [1,2,3,4,5,6,7,8,9,10]

for i in 0..array.length
 if array[i]%7 == 0 
  break
 end
 print " #{array[i]}"
end
