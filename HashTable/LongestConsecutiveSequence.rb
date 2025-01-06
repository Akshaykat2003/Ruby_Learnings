require 'set'
def longest_consecutive(arr)
  return 0 if arr.empty?

  num_set = arr.to_set
  longestStreak = 0

  arr.each do |elem|
    if !num_set.include?(elem-1)
      current_elem = elem
      currentStreak = 1

      while num_set.include?(current_elem+1)
        current_elem+=1
        currentStreak+=1
      end

      longestStreak = [longestStreak,currentStreak].max
    end
  end
    longestStreak
end


nums = [100, 4, 200, 1, 3, 2]
puts longest_consecutive(nums) # Output: 4 (The sequence is [1, 2, 3, 4])
