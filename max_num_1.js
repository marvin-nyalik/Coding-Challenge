/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var longestOnes = function (nums, k) {
  let max = 0;
  let left = 0;
  let right = 0;
  let zero_count = 0;

  while (right < nums.length) {
    if (nums[right] == 0) {
      zero_count++;
    }

    while (zero_count > k) {
      if (nums[left] == 0) {
        zero_count--;
      }

      left++;
    }
    max = Math.max(max, right - left + 1);
    right++;
  }

  return max;
};
