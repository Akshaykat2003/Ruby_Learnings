
def validParenthesis(str)
  return true if str.empty?

  stack = []
  str.each_char do |elem|
    case elem
    when '(','[','{'
      stack.push(elem);
    when ')'
      return false if stack.pop!='('
    when ']'
      return false if stack.pop!='['
    when '}'
      return false if stack.pop!='{'
    end
  end
  stack.empty?
end


str = "[{2,3},{2+3}]"
puts validParenthesis(str)