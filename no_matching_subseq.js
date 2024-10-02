/**
 * @param {string} s
 * @param {string[]} words
 * @return {number}
 */
var isSubsequence = function (s, t) {
  let s_idx = 0;
  let t_idx = 0;

  while (s_idx < s.length && t_idx < t.length) {
    if (t[t_idx] === s[s_idx]) {
      t_idx++;
    }
    s_idx++;
  }
  return t_idx === t.length;
};
var numMatchingSubseq = function (s, words) {
  let count = 0;

  for (let word of words) {
    if (isSubsequence(s, word)) {
      count++;
    }
  }

  return count;
};
