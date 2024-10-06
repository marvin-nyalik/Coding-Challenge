/**
 * @param {number[]} nums
 * @return {number}
 */
var longestSubarray = function (nums) {
  let left = 0;
  let right = 0;
  let max = 0;
  let allowed = 0;

  while (right < nums.length) {
    if (nums[right] != 1) {
      allowed++;
    }

    while (allowed > 1) {
      if (nums[left] != 1) {
        allowed--;
      }
      left++;
    }

    max = Math.max(max, right - left);
    right++;
  }

  return max;
};
