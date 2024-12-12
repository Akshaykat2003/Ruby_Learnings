=begin Encapsulation
Problem Statement 1: Bank Account Management System
Create a class BankAccount that encapsulates the details of a bank account. The class should have the following features:
An instance variable balance (private) to store the current balance.

Methods to deposit(amount) and withdraw(amount) with proper validation to ensure the balance doesn't go negative.
A method display_balance that returns the current balance (public).
Create an object of BankAccount, perform some deposit and withdrawal operations, and display the balance.
=end


class InsufficientBalance < StandardError

end

class BankAccount


  def initialize(balance)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end
  
   def withdraw(amount)
     if @balance >= amount
       @balance -= amount
     else
      raise InsufficientBalance,"Insufficient Balance"
     end
   end

   def display_balance
     puts "Current Balance: #{@balance}"
   end
end

begin
  account = BankAccount.new(0)
  account.deposit(500)
  account.withdraw(600)
  account.display_balance
rescue InsufficientBalance => e
  puts "Error Occured:#{e.message}"
end




