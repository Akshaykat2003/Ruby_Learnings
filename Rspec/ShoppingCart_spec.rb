
require_relative 'ShoppingCart'

RSpec.describe ShoppingCart do
  let(:cart) { ShoppingCart.new }

  describe '#add_item' do
    it 'adds an item with its price to the cart' do
      cart.add_item('Apple', 1.00)
      expect(cart.items).to eq({ 'Apple' => 1 })
      expect(cart.prices).to eq({ 'Apple' => 1.00 })
    end

    it 'increments the quantity of an existing item' do
      cart.add_item('Banana', 0.50)
      cart.add_item('Banana', 0.50)
      expect(cart.items).to eq({ 'Banana' => 2 })
    end
  end

  describe '#remove_item' do
    it 'removes an item from the cart' do
      cart.add_item('Orange', 0.75)
      cart.remove_item('Orange')
      expect(cart.items).to be_empty
    end

    it 'decrements the quantity of an item' do
      cart.add_item('Banana', 0.50)
      cart.add_item('Banana', 0.50)
      cart.remove_item('Banana')
      expect(cart.items).to eq({ 'Banana' => 1 })
    end

    it 'does not remove an item if it is not in the cart' do
      cart.remove_item('Grapes')
      expect(cart.items).to be_empty
    end
  end

  describe '#calculate_total' do
    it 'calculates total price without discounts' do
      cart.add_item('Apple', 1.00)
      cart.add_item('Banana', 0.50)
      expect(cart.calculate_total).to eq(1.50)
    end

    it 'applies a discount for oranges' do
      cart.add_item('Orange', 0.75)
      expect(cart.calculate_total).to eq(0.25) # $0.75 - $0.50 discount
    end

    it 'applies BAN discount for bananas' do
      cart.add_item('Banana', 0.50)
      cart.add_item('Banana', 0.50) 
      expect(cart.calculate_total).to eq(0.50) # Pay for one banana only
    end

    it 'applies both discounts correctly' do
      cart.add_item('Orange', 0.75)
      cart.add_item('Banana', 0.50)
      cart.add_item('Banana', 0.50) 
      expect(cart.calculate_total).to eq(0.75) # after applying for both discounts 0.25 and 0.50 = 0.75
    end
  end
end
