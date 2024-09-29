/**
 * @param {number[]} flowerbed
 * @param {number} n
 * @return {boolean}
 */
var canPlaceFlowers = function (flowerbed, n) {
  for (let i = 0; i < flowerbed.length; i++) {
    if (flowerbed[i] == 0) {
      let prevEmpty = i == 0 || flowerbed[i - 1] == 0;
      let nextEmpty = i == flowerbed.length - 1 || flowerbed[i + 1] == 0;

      if (prevEmpty && nextEmpty) {
        flowerbed[i] = 1;
        n--;

        if (n == 0) return true;
        i++;
      }
    }
  }
  return n <= 0;
};
