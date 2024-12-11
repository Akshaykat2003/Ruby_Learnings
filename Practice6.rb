#Write a Ruby program to process an array of names. If a specific name (e.g., "exit") is found, 
#immediately stop the processing using throw and print a message indicating the name was found.

#Write a Ruby program to process an array of names. 
#If a specific name (e.g., "exit") is found, 
#immediately stop the processing using throw and print a message indicating the name was found.

names = gets.split
inputName = gets.chomp

catch(:name_found) do
  names.each_with_index do |names,index| 
    if names == inputName
     puts "value is found at position : #{index+1}"
     throw(:name_found)
    end
  end
 puts "Not found"
end
