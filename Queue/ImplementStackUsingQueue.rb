class MyStack
  def initialize
   @queue1 = []
   @queue2 = []
  end

  def push(x)
    @queue2.push(x)

    while !@queue1.empty?
      @queue2.push(@queue1.shift)
    end

    temp = @queue1
    @queue1 = @queue2
    @queue2 = temp
  end

  def pop
    return @queue1.shift if !@queue1.empty?
    return nil
  end
  
  def top
    return @queue1[0] if !@queue1.empty?
    return nil
  end

  def is_empty
   @queue1.empty?
  end
end

# Example usage:
stack = MyStack.new
stack.push(1)
stack.push(2)
stack.push(3)

puts "Top element: #{stack.top}" 
puts "Removed element: #{stack.pop}" 
puts "Top element after pop: #{stack.top}" 
puts "Is stack empty? #{stack.is_empty}"  
stack.pop
stack.pop
puts "Is stack empty after removing all elements? #{stack.is_empty}" 


