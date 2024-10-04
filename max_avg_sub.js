/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var findMaxAverage = function (nums, k) {
  let l = 0;
  let r = k - 1;
  let total = nums.slice(l, r + 1).reduce((acc, cur) => acc + cur, 0);
  let av = total / k;

  while (r < nums.length - 1) {
    l++;
    r++;
    total = total - nums[l - 1] + nums[r];
    let avg = total / k;
    av = Math.max(av, avg);
  }

  return av;
};
