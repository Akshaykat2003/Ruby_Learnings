
def group_anagrams(input)
  anagram = {}

  input.each do |str|
    key = str.chars.sort.join

    if !anagram.key?(key)
      anagram[key] = []
    end
    anagram[key] << str
  end
  anagram.values
end


input = ["eat", "tea", "tan", "ate", "nat", "bat"]
result = group_anagrams(input)
puts result.inspect
