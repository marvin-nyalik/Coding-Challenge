/**
 * @param {number[]} nums
 * @return {boolean}
 */
var increasingTriplet = function (nums) {
  let small = Infinity;
  let mid = Infinity;

  for (let num of nums) {
    if (num <= small) {
      small = num;
    } else if (num <= mid) {
      mid = num;
    } else {
      return true;
    }
  }

  return false;
};
