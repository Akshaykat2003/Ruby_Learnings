#Problem Statement: Create a Ruby program that calculates the square root of a number provided by the user. 
#If the user provides invalid input, handle the exception and prompt the user to re-enter the value. 
#Use nested exception handling to retry the input process if an error occurs.

class InvalidInput < StandardError
end

def checkSquare(num)
  if num < 0
    raise InvalidInput, "Cannot calculate the square root of a negative value"
  end
  Math.sqrt(num)
end

loop do
  begin
    puts "Enter a value to calculate the square root:"
    num = gets.chomp

  
    begin
      num = Float(num)
    rescue ArgumentError
      raise InvalidInput, "Please enter a valid number"
    end

    # Calculate the square root
    result = checkSquare(num)

  
    puts "The square root of #{num} is #{result}"
    break 

  rescue InvalidInput => e
    
    puts "#{e.message}"
  end
end
