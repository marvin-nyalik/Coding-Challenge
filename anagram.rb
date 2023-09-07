def anagram?(string1, string2)
  return false if string1.size != string2.size
  char_count = Array.new(256, 0)

  string1.each_char do |char|
    char_count[char.ord] += 1
  end

  string2.each_char do |char|
    char_count[char.ord] -= 1
  end

  char_count.all?{ |count| count == 0 }
end

puts anagram?("listen", "silent") #true
puts anagram?("nap", "pan") #true
puts anagram?("electric", "electron") #false

