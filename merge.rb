# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
    fin = String("")
    if word1.length > word2.length
      (0...word2.length).each do |i|
        fin += word1[i]
        fin += word2[i]
      end
      fin += word1[word2.length..-1]
    elsif word2.length > word1.length
      (0...word1.length).each do |i|
        fin += word1[i]
        fin += word2[i]
      end
      fin += word2[word1.length..-1]
    else
      (0...word1.length).each do |i|
        fin += word1[i]
        fin += word2[i]
      end
    end
    fin
end

=begin

    Runtime: O(N + M)
    Space Complexity: O(N + M)
    
=end