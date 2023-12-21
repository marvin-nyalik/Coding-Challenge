# @param {String} word1
# @param {String} word2
# @return {Boolean}
def close_strings(word1, word2)
    count1 = character_count(word1)
    count2 = character_count(word2)
    
    return false if count1.keys.sort != count2.keys.sort
    count1.values.sort == count2.values.sort
end

def character_count(word)
    count = Hash.new(0)
    word.each_char do |c|
        count[c] += 1
    end
    count
end

