#Develop a test suite using RSpec for a Ruby class BankAccount 
#with methods to deposit, withdraw, and check_balance. 
#Ensure that withdrawing more than the available balance raises an appropriate error.

class BankAccount
  attr_reader :balance

  def initialize(initial_balance)
    @balance = initial_balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise "Insufficient funds" if amount > @balance
    @balance -= amount
  end

  def check_balance
    @balance
  end
end
