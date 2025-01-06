def four_sum(nums, target)
  return [] if nums.length < 4

  # Hash to store pairs of sums
  pair_sums = {}
  result = []

  # Step 1: Store all possible pairs of sums in the hash
  (0...nums.length).each do |i|
    (i + 1...nums.length).each do |j|
      sum = nums[i] + nums[j]
      pair_sums[sum] ||= []
      pair_sums[sum] << [i, j] # Store the indices of the pair
    end
  end

  # Step 2: Iterate through all pairs again to find quadruplets
  (0...nums.length).each do |i|
    (i + 1...nums.length).each do |j|
      complement = target - (nums[i] + nums[j])
      
      # Check if the complement exists in the hash table
      if pair_sums.key?(complement)
        pair_sums[complement].each do |pair|
          k, l = pair
          # Ensure all indices are unique
          if i != k && i != l && j != k && j != l
            quadruplet = [nums[i], nums[j], nums[k], nums[l]].sort
            result << quadruplet unless result.include?(quadruplet)
          end
        end
      end
    end
  end

  result.uniq # Return unique quadruplets
end

# Example usage:
nums = [1, 0, -1, 0, -2, 2]
target = 0
result = four_sum(nums, target)
puts result.inspect # Output: [[-2, -1, 0, 1], [-2, 0, 0, 2]]
