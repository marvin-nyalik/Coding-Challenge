/**
 * @param {string} s
 * @return {string}
 */

var reverseWords = function (s) {
  const arr = s.trim().split(/\s+/).reverse();

  return arr.join(" ");
};
