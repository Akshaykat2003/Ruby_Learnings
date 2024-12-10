# Write a Ruby program that prompts the user to input a valid integer between 1 and 10. If the user inputs an invalid number, use the redo statement to make them retry entering the value



loop do
  puts"Enter a Number between 1 to 10"
  num = gets.chomp.to_i
  
  if num>=1 && num<=10
    puts "Valid Integer" then
    break
  else
    puts "Invalid Number"
    redo
  end
end

 
 
 