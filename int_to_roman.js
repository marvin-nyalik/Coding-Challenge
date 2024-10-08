/**
 * @param {number} num
 * @return {string}
 */
var intToRoman = function (num) {
  const romanMap = {
    1000: "M",
    900: "CM",
    500: "D",
    400: "CD",
    100: "C",
    90: "XC",
    50: "L",
    40: "XL",
    10: "X",
    9: "IX",
    5: "V",
    4: "IV",
    1: "I",
  };
  let romanStr = "";

  const keys = Object.keys(romanMap)
    .map(Number)
    .sort((a, b) => b - a);
  for (let key of keys) {
    while (num >= key) {
      romanStr += romanMap[key];
      num -= key;
    }
  }

  return romanStr;
};
