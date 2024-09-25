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


/**
 * @param {string} word1
 * @param {string} word2
 * @return {string}
 */
var mergeAlternately = function(word1, word2) {
    let i = 0;
    let j = 0;
    let s = [];

    while (i < word1.length && j < word2.length){
        s.push(word1[i])
        s.push(word2[j])
        i+=1
        j+=1
    }

    while(i < word1.length){
        s.push(word1[i])
        i += 1;
    }
 
    while(j < word2.length){
        s.push(word2[j])
        j += 1;
    }

    return s.join('');
};
