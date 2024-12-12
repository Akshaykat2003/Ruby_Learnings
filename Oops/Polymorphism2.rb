# Problem Statement 8: Shape Area Calculation Using Polymorphism
# Given the following classes:
# A base class Shape with an abstract method area.
# Two subclasses: Square (with side length) and Triangle (with base and height).
# Both subclasses implement the area method to calculate the respective areas.
# Create an array of different shapes (e.g., squares and triangles) and use polymorphism to calculate and display the area of each shape without knowing its exact type.


class Shape 
  def area 
    raise NotImplementedError,"Subclasses must implement the area method"
  end

  def display_details
    puts "Area of #{self.class} is #{area}"
  end
end

class Sqaure < Shape
  def initialize(side_length)
    @side_length = side_length
  end

  def area 
    sqrArea = @side_length * @side_length
    return sqrArea
  end
end

class Triangle < Shape

  def initialize(base,length)
    @base = base
    @length = length
  end

  def area
    triArea= (@base * @length)/2
    return triArea
  end
end


  
square = Sqaure.new(4)
triangle = Triangle.new(4,5)

shapes = [square,triangle]
shapes.each do |shape|
  shape.display_details
end


