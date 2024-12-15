# 7. Develop RSpec tests for a method fibonacci(n) that returns the first n Fibonacci numbers. 
# Ensure the tests cover edge cases such as n = 0 and n = 1.

class Fibonacci

  def self.check_fibonacci(n)
    return [] if n<=0
    return [0] if n==1

    fib_sequence = [0,1]
    for i in 2...n
      fib_sequence << fib_sequence[i-1] +fib_sequence[i-2]
    end
    fib_sequence
  end
end