/**
 * @param {string} s
 * @param {number} k
 * @return {number}
 */
const vowels = new Set(["a", "e", "i", "o", "u"]);
const isVowel = (char) => {
  return vowels.has(char);
};

var maxVowels = function (s, k) {
  let s_arr = s.split("");
  let l = 0;
  let r = k - 1;
  let initArr = s_arr.slice(l, r + 1);
  let maxCount = 0;

  initArr.forEach((chr) => {
    if (isVowel(chr)) {
      maxCount++;
    }
  });

  let thisCount = maxCount;

  while (r < s.length - 1) {
    l++;
    r++;
    let leftIsVowel = isVowel(s[l - 1]);
    let rightIsVowel = isVowel(s[r]);

    if ((leftIsVowel && rightIsVowel) || (!leftIsVowel && !rightIsVowel)) {
      thisCount = thisCount;
    } else if (leftIsVowel && !rightIsVowel) {
      thisCount = thisCount - 1;
    } else if (!leftIsVowel && rightIsVowel) {
      thisCount++;
    }

    maxCount = Math.max(thisCount, maxCount);
  }

  return maxCount;
};
