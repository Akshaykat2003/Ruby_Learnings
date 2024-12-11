#Problem Statement: Create a custom exception class called AgeError. 
#Write a Ruby program that takes a user's age as input and raises an AgeError if the input is not between 18 and 100. 
#Handle the exception and provide a user-friendly error message.


class AgeError < StandardError 
end

begin
  puts"Enter a age between 18 and 100"
  age = gets.chomp.to_i
  if age>18 && age<100
  puts "Wooo!! Your Age is #{age} valid and it is between 18 and 100"
  else
    raise AgeError,"AgeError Occured Not Between 18 and 100" 
  end
  
 
rescue AgeError => e
  puts "#{e.message}"
ensure
  puts "Executed Successfully"
end




