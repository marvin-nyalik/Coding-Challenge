/**
 * @param {number[]} nums
 * @return {number}
 */
var pivotIndex = function (nums) {
  let n = nums.length;
  let pre = Array(n);
  pre[0] = nums[0];

  let post = Array(n);
  post[n - 1] = nums[n - 1];

  for (let i = 1; i < nums.length; i++) {
    pre[i] = pre[i - 1] + nums[i];
  }

  for (let i = nums.length - 2; i >= 0; i--) {
    post[i] = post[i + 1] + nums[i];
  }

  for (let i = 0; i < n; i++) {
    if (pre[i] === post[i]) return i;
  }

  return -1;
};
