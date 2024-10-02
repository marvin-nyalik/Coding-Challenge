/**
 * @param {number[]} gain
 * @return {number}
 */
var largestAltitude = function (gain) {
  let alts = [0];

  for (let i = 1; i <= gain.length; i++) {
    alts.push(alts[i - 1] + gain[i - 1]);
  }

  return Math.max(...alts);
};
