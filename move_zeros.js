/**
 * @param {number[]} nums
 * @return {void} Do not return anything, modify nums in-place instead.
 */
var moveZeroes = function (nums) {
  let non_zero_idx = 0;
  for (let i = 0; i <= nums.length - 1; i++) {
    if (nums[i] != 0) {
      [nums[i], nums[non_zero_idx]] = [nums[non_zero_idx], nums[i]];
      non_zero_idx++;
    }
  }
  return nums;
};
