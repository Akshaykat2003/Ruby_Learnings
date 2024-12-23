# Find the Kth Largest Element in an Array
# 0(nlog k)
class MinHeap
  attr_accessor :heap

  def initialize
    @heap = []
  end

  def push(val)
    @heap << val
    @heap.sort!
  end

  def pop
    @heap.shift
  end

  def min
    @heap.first
  end

  def size
    @heap.size
  end
end

def find_kth_largest(arr,k)
  heap = MinHeap.new
 
  arr.each do |elem|
    if heap.size < k
      heap.push(elem)
    elsif heap.min <= elem
      heap.pop
      heap.push(elem)
    end
  end
  return heap.pop
end

nums = []
nums.push(3) 
nums.push(2)
nums.push(1)
nums.push(5)
nums.push(6)
nums.push(4)

k=2
puts "Array : #{nums}"
puts "The #{k}th largest element is: #{find_kth_largest(nums, k)}"
