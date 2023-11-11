# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  str = ''
  i, j = 0, 0
  while i < word1.length && j < word2.length
    str += word1[i]
    str += word2[j]
    i += 1
    j += 1
  end

  while i < word1.length
    str += word1[i]
    i += 1
  end

  while j < word2.length
    str += word2[j]
    j += 1
  end
  str
end

p merge_alternately('aaa', 'bbbbc')
