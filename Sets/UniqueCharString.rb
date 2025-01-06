
def all_unique_characters?(str)
  char_set = Set.new

  str.each_char do |char|
    if char_set.include?(char)
      return false
    else
      char_set.add(char)
    end
  end
  true
end






puts all_unique_characters?("abcdef")   
puts all_unique_characters?("hello")     
puts all_unique_characters?("world")    
