#Problem Statement: Write a Ruby program that attempts to connect to a server by simulating a method connect_to_server. 
#If the connection fails (simulate failure with a RuntimeError), the program should retry the connection up to 3 times before giving up.


class ConnectionError < StandardError
end

def connect_to_server
  if rand(2).zero?
    raise ConnectionError, "Failed to connect to the server"
  end
  "Connection Successful"
end

MAX_RETRIES = 3
attempts = 0

  begin
    puts "Attempting to connect to the server..."
    result = connect_to_server
    puts result
  rescue ConnectionError => e
    attempts += 1
    puts "#{e.message} Retrying...(Attempt #{attempts})"
    retry if attempts < MAX_RETRIES
    puts "Failed to connect to the server after #{MAX_RETRIES} attempts"
  rescue => e
    puts "An unexpected error occurred: #{e.message}"
  end


