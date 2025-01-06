

def polishNotation(str)
  stack = []
  expression = ['+','-','/','*']

  str.each_char do |elem|
    if !expression.include?(elem)
      stack.push(elem.to_i)
    else
      b = stack.pop()
      a = stack.pop()
      case elem
      when '+'
        stack.push(a+b)
      when '-'
        stack.push(a-b)
      when '*'
        stack.push(a*b)
      when '/'
        stack.push(a/b)
      end
    end
  end
  stack.pop
end

str = "35+2/2*"
puts polishNotation(str)
