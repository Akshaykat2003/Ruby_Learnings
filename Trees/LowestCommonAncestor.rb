class TreeNode
  attr_accessor :val , :left, :right
  def initialize(val=0,left = nil,right = nil)
    @val = val
    @left = left
    @right = right
  end
end

  def FindLCA(root,p,q)
    return nil if root.nil?

    return root if root.val == p || root.val == q

    left = FindLCA(root.left,p,q)
    right = FindLCA(root.right,p,q)

    return root if left && right

     left || right
end


# Constructing a binary tree:
#         3
#        / \
#       5   1
#      /|   |\
#     6 2   0 8
#       / \
#      7   4

root = TreeNode.new(3)
root.left = TreeNode.new(5)
root.right = TreeNode.new(1)
root.left.left = TreeNode.new(6)
root.left.right = TreeNode.new(2)
root.right.left = TreeNode.new(0)
root.right.right = TreeNode.new(8)
root.left.right.left = TreeNode.new(7)
root.left.right.right = TreeNode.new(4)

p = 9
q = 0
lca_node = FindLCA(root,p,q)


if lca_node
  puts "Lowest Common Ancestor of #{p} and #{q} is: #{lca_node.val}" 
else
  puts "Lowest Common Ancestor not found."
end


