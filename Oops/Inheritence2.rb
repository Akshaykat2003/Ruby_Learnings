
 #Employee Salary Calculation
# Create a class Employee with the following:
# name and salary as instance variables.
# A method display_details to show the name and salary of the employee.
# Create two subclasses Manager and Developer that inherit from Employee. The Manager class should have an additional method to give a bonus, while Developer should include a method to increase the salary by a certain percentage.
# Create objects of both subclasses, set salaries, and calculate the final salary with bonuses and increases.
 

class Employee
  attr_accessor :name,:salary

  def initialize(name,salary)
    @name = name
    @salary = salary
  end

  def display_details
    puts "Employee name is #{@name} and is #{self.class}"
    puts "Final Salary : #{@salary}"
  end
end

class Manager < Employee
  def give_bonus(bonus)
    @salary+=bonus
  end
end

class Developer < Employee
  def increase_salary(percent)
  increaseAmount = @salary*(percent/100.0)
  @salary+=increaseAmount
  end
end

manager = Manager.new("Sachin",50000)
manager.give_bonus(5000)
manager.display_details

developer = Developer.new("Rahul",5000)
developer.increase_salary(20)
developer.display_details

