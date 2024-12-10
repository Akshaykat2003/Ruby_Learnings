#Create a Ruby program that loops through numbers from 1 to 20. Skip numbers that are multiples of 3 and print the rest.

for i in 1..20
  if i%3 == 0
    next
  end
  print " #{i}"
end