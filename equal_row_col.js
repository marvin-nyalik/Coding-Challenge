/**
 * @param {number[][]} grid
 * @return {number}
 */
const arrayEquals = (arr1, arr2) => {
  return arr1.every((el, idx) => el === arr2[idx]);
};

var equalPairs = function (grid) {
  let result = 0;
  for (let i = 0; i < grid.length; i++) {
    for (let j = 0; j < grid[i].length; j++) {
      const row = grid[i];
      const col = [];

      for (let k = 0; k < grid.length; k++) {
        col.push(grid[k][j]);
      }
      if (arrayEquals(row, col)) {
        result++;
      }
    }
  }

  return result;
};
