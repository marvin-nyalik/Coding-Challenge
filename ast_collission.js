/**
 * @param {number[]} asteroids
 * @return {number[]}
 */
var asteroidCollision = function (asteroids) {
  const stack = [];
  for (let ast of asteroids) {
    let dest = false;

    while (stack.length > 0 && ast < 0 && stack[stack.length - 1] > 0) {
      let top = stack[stack.length - 1];
      if (Math.abs(top) === Math.abs(ast)) {
        stack.pop();
        dest = true;
        break;
      } else if (Math.abs(top) > Math.abs(ast)) {
        dest = true;
        break;
      } else {
        stack.pop();
      }
    }

    if (!dest) {
      stack.push(ast);
    }
  }
  return stack;
};
