require_relative "Fibonacci"

RSpec.describe Fibonacci do

  describe "check_fibonacci" do
    it "return empty array if n is less than or equal to 0" do
      expect(Fibonacci.check_fibonacci(0)).to eq([])
    end

    it "return single element if  n is 1" do
      expect(Fibonacci.check_fibonacci(1)).to eq([0])
    end

    it "return  2 elements if n is 2 " do
      expect(Fibonacci.check_fibonacci(2)).to eq([0,1])
    end

    it "return 3 elements if n is 3" do
      expect(Fibonacci.check_fibonacci(3)).to eq([0,1,1])
    end

    it "return 5 elements if n is 5" do
      expect(Fibonacci.check_fibonacci(5)).to eq([0,1,1,2,3])
    end

    

   end




end