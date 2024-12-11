#1. Problem Statement: Write a Ruby program that prompts the user to enter two numbers and performs division. 
#Use exception handling to catch and handle the following errors:

# Division by zero (ZeroDivisionError)
# Invalid input (ArgumentError, e.g., if the user inputs non-numeric values)  



 def checkDivison(a,b)
  raise ZeroDivisionError if b == 0
  div =  a/b
  return div
 end
begin
  puts "Enter value a and b"
  a = Integer(gets.chomp)
  b = Integer(gets.chomp)
  puts "After dividing #{a} and #{b}", checkDivison(a,b)
  
rescue ZeroDivisionError=>e
  puts"Invalid ZeroDivison Error"
rescue ArgumentError =>e
  puts "ArgumentError Occured"
end