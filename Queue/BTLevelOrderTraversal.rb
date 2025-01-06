class TreeNode
  attr_accessor :val , :left , :right
  def initialize(val = 0,left = nil,right=nil)
    @val = val
    @left = left
    @right = right
  end

end

class Solution
  def level_order(root)
    return [] if root.nil?
    result = []
    queue = [root]

    while !queue.empty?
      levelSize = queue.size
      current_level = []

      levelSize.times do
        node = queue.shift
        current_level<<node.val

        queue<<node.left if node.left
        queue << node.right if node.right
      end

      result << current_level
    end
    result
  end
end



# Example usage:
# Constructing a binary tree:
#        1
#       / \
#      2   3
#     / \   \
#    4   5   6

root = TreeNode.new(1)
root.left = TreeNode.new(2)
root.right = TreeNode.new(3)
root.left.left = TreeNode.new(4)
root.left.right = TreeNode.new(5)
root.right.right = TreeNode.new(6)

solution = Solution.new
puts solution.level_order(root).inspect # Output: [[1], [2, 3], [4, 5, 6]]







