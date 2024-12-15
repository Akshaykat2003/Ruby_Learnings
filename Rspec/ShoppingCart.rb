# Create RSpec tests for a ShoppingCart class that can add_item, remove_item, and calculate the total_price. 
# Ensure the tests check if discounts are applied correctly when specific conditions are met.

class ShoppingCart
  attr_reader :items, :prices

  def initialize
    @items = Hash.new(0) 
    @prices = Hash.new(0)
  end


  def add_item(item, price)
    @items[item] += 1 
    @prices[item] = price
  end

 
  def remove_item(item)
    if @items.key?(item) && @items[item] > 0
      @items[item] -= 1
      if @items[item] == 0
        @items.delete(item) 
        @prices.delete(item) 
      end
    end
  end


  def calculate_total
    total = @items.map { |item, quantity| @prices[item] * quantity }.sum
    puts total

    if @items.key?('Orange') && @items['Orange'] > 0
      total -= 0.50 * @items['Orange'] 
    end

    banana_count = @items['Banana'] || 0
    if banana_count > 1
      total -= (@prices['Banana'] * (banana_count / 2)) # Apply 50% discount
    end

    total
  end

  def display_cart
    puts "Items in your cart:"
    @items.each do |item, quantity|
      puts "#{item}: #{quantity} (Price: $#{@prices[item]})"
    end
  end
end


# obj = ShoppingCart.new
# obj.add_item('Apple', 1.00)
# obj.add_item('Banana', 0.50)
# obj.add_item('Banana', 0.50)
# obj.add_item('Orange', 0.75)
# obj.remove_item('Banana')
# obj.calculate_total
# obj.display_cart
