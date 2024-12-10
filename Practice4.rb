#Write a program that simulates a simple counter. 
#It attempts to divide a number by a given divisor. 
#If the divisor is 0, retry the division after prompting the user for a new divisor.


begin
  puts "Enter A number"
  n = gets.to_i
  raise "Error" if n == 0
  puts "#{n} is valid divisor"
rescue 
  puts "Invalid divisor,try again"
  retry if n == 0
end

