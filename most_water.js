/**
 * @param {number[]} height
 * @return {number}
 */
var maxArea = function (height) {
  let r = height.length - 1;
  let l = 0;
  let max = 0;

  while (l < r) {
    let cur = (r - l) * Math.min(height[l], height[r]);
    max = Math.max(cur, max);
    if (height[l] < height[r]) {
      l++;
    } else {
      r--;
    }
  }
  return max;
};
