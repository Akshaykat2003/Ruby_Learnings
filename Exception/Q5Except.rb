

class InvalidEmailError < StandardError
end


def IisValidEmail(email)
   email_regex = "[a-zA-Z0-9.*%±]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,}"
   unless email.match?(email_regex)
    raise InvalidEmailError,"Please Enter valid Email Addresss"
   end
   puts "Valid Emial Address #{email}"
end

begin
puts "Enter a Email address"
email = gets.chomp
IisValidEmail(email)
rescue InvalidEmailError => e
 puts "#{e.message}"
end