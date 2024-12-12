# Problem Statement: Create a Ruby program that raises a custom exception DatabaseError if a database query fails. 
#Inside the exception, raise another exception ConnectionError if the failure is due to a lost database connection. 
#Demonstrate how to chain exceptions to understand the root cause.

class DatabaseError < StandardError
  def initialize(message = "Database query failed")
    super(message)
  end
end

class ConnectionError < DatabaseError
  def initialize(message = "Lost database connection")
    super(message)
  end
end

def query_database(query)
  if query == "SELECT * FROM users WHERE id = -1" 
    raise ConnectionError.new("Connection lost while executing the query.")
  elsif query.empty?
    raise DatabaseError.new("Query cannot be empty.")
  else
    puts "Query executed successfully: #{query}"
  end
end


begin
  query_database("SELECT * FROM users WHERE id = -1") #|| query= "" for empty query
rescue ConnectionError => e
  puts "Caught an error: #{e.message}"
  raise DatabaseError.new("Failed during database operation due to connection issues.") 
rescue DatabaseError => e
  puts "Caught a database error: #{e.message}"
end




