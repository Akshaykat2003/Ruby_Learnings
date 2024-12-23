#find missing number
def findMissingNumber(arr)
  n = arr.length + 1
  totalSum = n*(n+1)/2
  sum = 0
  arr.each do |elem|
    sum+=elem
  end
  totalSum - sum
end

arr = [1,2,3,5,6]

puts  "missing number is : #{findMissingNumber(arr)}"



