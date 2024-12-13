# 5. Mixed Concepts
# Problem Statement 9: 
# Create a Library System Using Encapsulation, Inheritance, and Polymorphism
# Design a library system where:
# A Book class stores the book's title, author, and genre (encapsulated with appropriate accessors).
# An EBook class inherits from Book and adds a method download to simulate downloading an e-book.
# A PhysicalBook class also inherits from Book and adds a method checkout to simulate borrowing a physical book.
# Use polymorphism to create an array of mixed EBook and PhysicalBook objects and display the book details with different behaviors for e-books and physical books.
 
class Book
  attr_accessor :titile ,:author,:genre
  def initialize(titile,author,genre)
    @titile = titile
    @author = author
    @genre = genre
  end

  def display_details
    puts "Title: #{@titile}"
    puts "Author: #{@author}"
    puts "Genre: #{@genre}"
  end
end

class EBook < Book
  def download
    puts "Downloading #{@titile} of #{@author}... :#{@genre}"
  end
end

class PhysicalBook < Book
  def checkout
    puts "Checking out #{@titile} of #{@author}... :#{@genre}"
  end
end

ebook = EBook.new("The Great Gatsby", "F. Scott Fitzgerald", "Novel")
physical_book = PhysicalBook.new("The Great Gatsby", "F. Scott Fitzgerald", "Novel")

books = [ebook, physical_book]

books.each do |book|
  book.display_details
  if book.is_a?(EBook)
    book.download
  else
    book.checkout
  end
end