/**
 * @param {number[]} nums
 * @return {number}
 */
var longestConsecutive = function (nums) {
  const numSet = new Set(nums);
  let max = 0;

  for (let num of nums) {
    if (!numSet.has(num - 1)) {
      let current = num;
      let count = 1;

      while (numSet.has(current + 1)) {
        count += 1;
        current += 1;
      }

      max = Math.max(count, max);
    }
  }

  return max;
};
