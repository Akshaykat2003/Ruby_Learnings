# Problem Statement 4: Vehicle Rental System
# Design an abstract class Vehicle with the following:
# An abstract method calculate_rent to compute the rental cost.
# Two subclasses Car and Bike that implement the calculate_rent method. For example, Car charges $20/day, and Bike charges $10/day.
# Create instances of both subclasses and calculate their rental charges based on the number of days.


class Vechicle
  def calculate_rent
    raise NotImplementedError,"Subclass Must Implement the Calculate_rent method "
  end
end


class Car < Vechicle
  @@price = 20
  def initialize(day)
    @day = day
  end

   def calculate_rent
    rental_Charges = @@price * @day
    return rental_Charges
   end

   def display_details
    puts "Rental Charges"
    puts "Price : #{@@price}"
    puts "Days  : #{@day}"
    puts "Total Rental charges of Car: #{calculate_rent}"
   end
end



class Bike < Vechicle
  @@price = 10
  def initialize(day)
    @day = day
  end

   def calculate_rent
    rental_Charges = @@price * @day
    return rental_Charges
   end

   def display_details
    puts "Rental Charges"
    puts "Price : #{@@price}"
    puts "Days  : #{@day}"
    puts "Total Rental charges of Bike: #{calculate_rent}"
   end
end


bike = Bike.new(10)

bike.display_details
car = Car.new(10)
car.display_details
