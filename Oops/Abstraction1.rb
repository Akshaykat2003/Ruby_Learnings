# Shape Hierarchy
# Create an abstract base class Shape with the following characteristics:
# A method area (abstract) that must be implemented by any subclass.
# Define two subclasses Circle and Rectangle. The Circle class should calculate its area using the formula πr^2, and the Rectangle class should calculate its area using width * height.
# Create an instance of each subclass and calculate and display their areas.



class Shape
  def area
    raise NotImplementedError, "Subclasses must implement the area method"
  end
end

class Circle < Shape
  def initialize(radius)
    @radius = radius
  end
  def area
    pi=3.14
    areaCircle = pi * @radius*2
    return areaCircle
  end

end

class Rectangle < Shape
  def initialize(width,height)
    @width=width
    @height=height
  end

  def area
    areaRectangle = @width * @height
    return areaRectangle
  end
end

circle = Circle.new(5)
rectangle = Rectangle.new(10, 20)

puts "Circle area: #{circle.area}"
puts "Rectangle area: #{rectangle.area}"




