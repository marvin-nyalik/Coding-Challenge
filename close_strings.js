/**
 * @param {string} word1
 * @param {string} word2
 * @return {boolean}
 */
var closeStrings = function (word1, word2) {
  const count1 = new Map();
  const count2 = new Map();

  for (let chr of word1) {
    count1.set(chr, (count1.get(chr) || 0) + 1);
  }

  for (let chr of word2) {
    count2.set(chr, (count2.get(chr) || 0) + 1);
  }

  const keys1 = new Set(count1.keys());
  const keys2 = new Set(count2.keys());

  if ([...keys1].some((k) => !keys2.has(k))) {
    return false;
  }

  const val1 = Array.from(count1.values()).sort((a, b) => a - b);
  const val2 = Array.from(count2.values()).sort((a, b) => a - b);

  return val1.length === val2.length && val1.every((v, i) => v === val2[i]);
};
