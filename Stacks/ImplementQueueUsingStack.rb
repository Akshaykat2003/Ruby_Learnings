class MyQueue
 def initialize
  @stack1 = []
  @stack2 = []
 end

 def enqueue(x)
  @stack1.push(x)
 end

 def dequeue
  if @stack2.empty?
    while !@stack1.empty?
      @stack2.push(@stack1.pop)
    end
  end
  return @stack2.pop() if !@stack2.empty?
  return nil
 end

 def peek
  if @stack2.empty?
    while !@stack1.empty?
      @stack2.push(@stack1.pop())
    end
  end
  return @stack2[-1] if !@stack2.empty?
  return nil
 end

 def is_empty
  @stack1.empty? && @stack2.empty?
 end
 end


queue = MyQueue.new
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)

puts "Front element: #{queue.peek}" 
puts "Removed element: #{queue.dequeue}" 
puts "Front element after dequeue: #{queue.peek}"  
puts "Is queue empty? #{queue.is_empty}"  
queue.dequeue
queue.dequeue
puts "Is queue empty after removing all elements? #{queue.is_empty}"  

