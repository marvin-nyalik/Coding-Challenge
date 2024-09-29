/**
 * @param {number[]} candies
 * @param {number} extraCandies
 * @return {boolean[]}
 */
var kidsWithCandies = function (candies, extraCandies) {
  const res = [];
  candies.forEach((num) => {
    let det = num + extraCandies;
    det >= Math.max(...candies) ? res.push(true) : res.push(false);
  });
  return res;
};
