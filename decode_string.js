/**
 * @param {string} s
 * @return {string}
 */
var decodeString = function (s) {
  const stack = [];

  for (let ch of s) {
    if (ch !== "]") {
      stack.push(ch);
    } else {
      let char = "";
      let current = stack.pop();
      while (current !== "[") {
        char = current + char;
        current = stack.pop();
      }

      let numStr = "";
      current = stack.pop();
      while (!isNaN(current)) {
        numStr = current + numStr;
        current = stack.pop();
      }
      let num = parseInt(numStr);

      let out = "";
      while (num > 0) {
        out += char;
        num--;
      }
      stack.push(out);
    }
  }

  return stack.join("");
};
