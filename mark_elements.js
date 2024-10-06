/**
 * @param {number[]} nums
 * @return {number}
 */
var findScore = function (nums) {
  const marked = new Set();
  const sorted = nums.map((num, idx) => [num, idx]).sort((a, b) => a[0] - b[0]);
  let score = 0;

  for (let i = 0; i < nums.length; i++) {
    let [num, idx] = sorted[i];

    if (!marked.has(idx)) {
      marked.add(idx);
      score += num;

      if (idx > 0) marked.add(idx - 1);
      if (idx < nums.length - 1) marked.add(idx + 1);
    }
  }

  return score;
};
