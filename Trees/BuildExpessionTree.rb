class TreeNode
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

def precedence(op)
  case op
  when '+', '-'
    1
  when '*', '/'
    2
  else
    0
  end
end

def build_expression_tree(expression)
  operators = []
  operands = []

  i = 0
  while i < expression.length
    char = expression[i]

    if char =~ /\d/ 
      num = ''
      while i < expression.length && expression[i] =~ /\d/
        num += expression[i]
        i += 1
      end
      operands.push(TreeNode.new(num.to_i))
      next
    elsif char == '(' 
      operators.push(char)
    elsif char == ')'
      while !operators.empty? && operators.last != '('
        apply_operator(operators, operands)
      end
      operators.pop 
    else 
      while !operators.empty? && precedence(operators.last) >= precedence(char)
        apply_operator(operators, operands)
      end
      operators.push(char)
    end

    i += 1
  end

  while !operators.empty?
    apply_operator(operators, operands)
  end


  operands.pop
end

def apply_operator(operators, operands)
  op = operators.pop
  right = operands.pop
  left = operands.pop

  node = TreeNode.new(op)
  node.left = left
  node.right = right

  operands.push(node)
end


expression = "3 + 4 * 2"
root = build_expression_tree(expression)


def inorder_traversal(node)
  return if node.nil?
  
  inorder_traversal(node.left)
  print "#{node.value} "
  inorder_traversal(node.right)
end

puts "In-order traversal of the expression tree:"
inorder_traversal(root) 
