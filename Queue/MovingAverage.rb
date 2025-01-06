class MovingAverage
  def initialize(size)
    @size = size
    @queue = []
    @sum = 0.0
    @result = 0.0
  end

  def next(val)
    if @queue.size == @size
     @sum -= @queue.shift
    end

    @queue.push(val)
    @sum += val

   @result = @sum/@queue.size
  end
 @result
end

# Example usage:
moving_average = MovingAverage.new(3)
puts moving_average.next(1)  
puts moving_average.next(10) 
puts moving_average.next(3)  
puts moving_average.next(5)  












