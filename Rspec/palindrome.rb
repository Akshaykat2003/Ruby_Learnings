# Write an RSpec test for a method palindrome? that returns true if a given string is a palindrome and false otherwise. 
# Include tests for edge cases such as empty strings and special characters.

class Palindrome
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def palindrome?
    string == string.reverse
  end
end