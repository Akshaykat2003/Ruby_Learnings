
# Problem Statement 10: Online Store Using OOP Principles
# Create a class Product with name, price, and quantity attributes. Then:
# Create two subclasses ElectronicProduct (with a warranty_period) and ClothingProduct (with a size).
# Add methods to calculate the total price based on the quantity.
# Use polymorphism to apply a discount on all products. Electronic products get a 10% discount, and clothing products get a 5% discount.
# Demonstrate encapsulation by hiding the product’s details from the user and only providing access to relevant methods.

class Product
  attr_accessor :name, :price, :quantity
  def initialize(name,price,quantity)
    @name = name
    @price = price
    @quantity = quantity
  end

  def total_price
    @price * @quantity
  end

  def display_details
    puts "Name: #{@name}"
    puts "Price: #{@price}"
    puts "Quantity: #{@quantity}"
    puts "Total Price: #{apply_discount}"
  end
end

class ElectronicProduct < Product
  attr_accessor :warranty_period
  def initialize(name,price,quantity,warranty_period)
    super(name,price,quantity)
    @warranty_period = warranty_period
  end
  def apply_discount
    total_price * 0.90
  end

  def warranty_period_info
    puts "warranty period: #{@warranty_period}"
  end
end



class ClothingProduct < Product
  attr_accessor :size
  def initialize(name,price,quantity,size)
    super(name,price,quantity)
    @size = size
  end

 def apply_discount
    total_price * 0.95
  end

  def size_info
    puts "size: #{@size}"
  end
end

p
electronic_product = ElectronicProduct.new("Laptop", 1000, 2, "1 year")
puts "Electronic Product Details:"
electronic_product.display_details
electronic_product.warranty_period_info

clothing_product = ClothingProduct.new("Shirt", 50, 3, "M") 
puts "\nClothing Product Details:"
clothing_product.display_details
clothing_product.size_info