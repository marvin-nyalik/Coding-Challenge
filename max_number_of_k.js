/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var maxOperations = function (nums, k) {
  let l = 0;
  let r = nums.length - 1;
  let count = 0;
  let nums_s = nums.sort((a, b) => a - b);

  while (l < r) {
    if (nums_s[l] + nums_s[r] == k) {
      count++;
      l++;
      r--;
    } else if (nums_s[l] + nums_s[r] > k) {
      r--;
    } else {
      l++;
    }
  }

  return count;
};
