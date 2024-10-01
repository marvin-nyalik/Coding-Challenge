/**
 * @param {number[]} nums
 * @return {number[]}
 */
var decompressRLElist = function (nums) {
  let result = [];
  for (let i = 1; i < nums.length; ) {
    let num = nums[i];
    let subArr = Array(nums[i - 1])
      .fill()
      .map(() => num);
    result.push(subArr);
    i += 2;
  }

  return result.flat();
};
