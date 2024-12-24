#group anagrams

def group_anagrams(arr)

  groupedAnagrams = Hash.new{|hash,key| hash[key] = []}

  arr.each do |elem|
    key = elem.chars.sort.join

    groupedAnagrams[key] << elem
  end
 return groupedAnagrams.values
end


input = ["eat", "tea", "tan", "ate", "nat", "bat"]
output = group_anagrams(input)
puts "Grouped Anagrams: #{output.inspect}"