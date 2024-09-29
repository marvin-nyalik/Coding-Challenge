/**
 * @param {string} s
 * @return {string}
 */
const vowelSet = new Set(["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]);
const foundVowel = (char) => {
  return vowelSet.has(char);
};
var reverseVowels = function (s) {
  let l = 0;
  let r = s.length - 1;
  let arr = s.split("");

  while (l < r) {
    while (l < r && !foundVowel(arr[l])) {
      l++;
    }

    while (l < r && !foundVowel(arr[r])) {
      r--;
    }

    if (l < r) {
      [arr[l], arr[r]] = [arr[r], arr[l]];
      l++;
      r--;
    }
  }

  return arr.join("");
};
