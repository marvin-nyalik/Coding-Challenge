/**
 * @param {number[]} nums
 * @return {number}
 */
var pivotIndex = function (nums) {
  let total = nums.reduce((acc, cur) => acc + cur, 0);
  let leftSum = 0;

  for (let i = 0; i < nums.length; i++) {
    console.log(leftSum);
    console.log(total - leftSum);

    if (leftSum === total - (leftSum + nums[i])) {
      return i;
    }
    leftSum += nums[i];
  }

  return -1;
};
