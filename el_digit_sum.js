/**
 * @param {number[]} nums
 * @return {number}
 */
var differenceOfSum = function (nums) {
  const elementSum = nums.reduce((a, b) => a + b, 0);
  const digitSum = nums.reduce((acc, cur) => {
    let curSum = 0;
    
    while (cur > 0) {
      let dgt = cur % 10;
      curSum += dgt;
      cur = Math.floor(cur / 10);
    }
    return curSum + acc;
  }, 0);

  return Math.abs(elementSum - digitSum);
};
