#Problem Statement: Write a Ruby program with two methods: fetch_data and process_data. 
#Simulate an exception in fetch_data and let the exception propagate to process_data. 
#Handle the exception in process_data and display a meaningful error message.


def fetch_data
  raise "Data fetch error: Unable to connect to the database."
end

def process_data
  begin
    fetch_data
  rescue => e
    puts "An error occurred while processing data: #{e.message}"
  end
end

process_data
